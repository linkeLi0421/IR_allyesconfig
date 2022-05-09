; ModuleID = '/llk/IR_all_yes/drivers/staging/pi433/rf69.c_pt.bc'
source_filename = "../drivers/staging/pi433/rf69.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@rf69_set_mode.mode_map = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\04\08\0C\10", [27 x i8] zeroinitializer }, align 32
@rf69_set_mode.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pi433\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rf69_set_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/staging/pi433/rf69.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set: illegal mode %u\00", [43 x i8] zeroinitializer }, align 32
@rf69_set_modulation.modulation_map = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\08\00", [30 x i8] zeroinitializer }, align 32
@rf69_set_modulation.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rf69_set_modulation\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set: illegal modulation %u\00", [37 x i8] zeroinitializer }, align 32
@rf69_set_modulation_shaping.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rf69_set_modulation_shaping\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"set: illegal mod shaping for FSK %u\00", [60 x i8] zeroinitializer }, align 32
@rf69_set_modulation_shaping.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"set: illegal mod shaping for OOK %u\00", [60 x i8] zeroinitializer }, align 32
@rf69_set_modulation_shaping.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.9, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set: modulation undefined\00", [38 x i8] zeroinitializer }, align 32
@rf69_set_bit_rate.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rf69_set_bit_rate\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"setBitRate: illegal input param\00", [32 x i8] zeroinitializer }, align 32
@rf69_set_deviation.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rf69_set_deviation\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"set_deviation: illegal input param: %u\00", [57 x i8] zeroinitializer }, align 32
@rf69_set_deviation.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"set_deviation: err in calc of msb\00", [62 x i8] zeroinitializer }, align 32
@rf69_set_frequency.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rf69_set_frequency\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"setFrequency: illegal input param\00", [62 x i8] zeroinitializer }, align 32
@rf69_set_output_power_level.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rf69_set_output_power_level\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"set: illegal power level %u\00", [36 x i8] zeroinitializer }, align 32
@rf69_set_pa_ramp.pa_ramp_map = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\00\0F", [16 x i8] zeroinitializer }, align 32
@rf69_set_pa_ramp.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rf69_set_pa_ramp\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set: illegal pa_ramp %u\00", [40 x i8] zeroinitializer }, align 32
@rf69_set_antenna_impedance.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rf69_set_antenna_impedance\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"set: illegal antenna impedance %u\00", [62 x i8] zeroinitializer }, align 32
@rf69_set_lna_gain.lna_gain_map = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\00\01\02\03\04\05\06", [25 x i8] zeroinitializer }, align 32
@rf69_set_lna_gain.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rf69_set_lna_gain\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set: illegal lna gain %u\00", [39 x i8] zeroinitializer }, align 32
@rf69_set_ook_threshold_dec.td_map = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\03\02\01\00\04\05\06\07", [24 x i8] zeroinitializer }, align 32
@rf69_set_ook_threshold_dec.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rf69_set_ook_threshold_dec\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"set: illegal OOK threshold decrement %u\00", [56 x i8] zeroinitializer }, align 32
@rf69_set_dio_mapping.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rf69_set_dio_mapping\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set: illegal dio number %u\00", [37 x i8] zeroinitializer }, align 32
@rf69_set_fifo_fill_condition.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rf69_set_fifo_fill_condition\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"set: illegal fifo fill condition %u\00", [60 x i8] zeroinitializer }, align 32
@rf69_set_sync_size.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rf69_set_sync_size\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set: illegal sync size %u\00", [38 x i8] zeroinitializer }, align 32
@rf69_set_packet_format.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rf69_set_packet_format\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"set: illegal packet format %u\00", [34 x i8] zeroinitializer }, align 32
@rf69_set_address_filtering.af_map = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\00\02\04", [29 x i8] zeroinitializer }, align 32
@rf69_set_address_filtering.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rf69_set_address_filtering\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"set: illegal address filtering %u\00", [62 x i8] zeroinitializer }, align 32
@rf69_set_tx_start_condition.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rf69_set_tx_start_condition\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"set: illegal tx start condition %u\00", [61 x i8] zeroinitializer }, align 32
@rf69_set_fifo_threshold.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 -53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rf69_set_fifo_threshold\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set: illegal fifo threshold %u\00", [33 x i8] zeroinitializer }, align 32
@rf69_set_dagc.dagc_map = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\000 ", [29 x i8] zeroinitializer }, align 32
@rf69_set_dagc.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 -46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rf69_set_dagc\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set: illegal dagc %u\00", [43 x i8] zeroinitializer }, align 32
@rf69_read_fifo.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rf69_read_fifo\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"read fifo: passed in buffer bigger then internal buffer\0A\00", [39 x i8] zeroinitializer }, align 32
@rf69_write_fifo.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.44, i8 0, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rf69_write_fifo\00", [16 x i8] zeroinitializer }, align 32
@rf69_set_bandwidth_intern.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rf69_set_bandwidth_intern\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"set: illegal bandwidth exponent %u\00", [61 x i8] zeroinitializer }, align 32
@rf69_set_bandwidth_intern.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.48, i8 0, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"set: illegal bandwidth mantisse %u\00", [61 x i8] zeroinitializer }, align 32
@switch.table.rf69_set_dio_mapping = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\06\04\02\00\06\04", [26 x i8] zeroinitializer }, align 32
@switch.table.rf69_set_dio_mapping.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%%%%&&", [26 x i8] zeroinitializer }, align 32
@switch.table.rf69_set_dio_mapping.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"?\CF\F3\FC?\CF", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.59 = private unnamed_addr constant [9 x i8] c"mode_map\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 107, i32 18 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 116, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"modulation_map\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 140, i32 18 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 146, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 194, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 212, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 216, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 232, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 275, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 293, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 326, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 407, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [12 x i8] c"pa_ramp_map\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 413, i32 18 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 432, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 448, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [13 x i8] c"lna_gain_map\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 455, i32 18 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 466, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"td_map\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 534, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 546, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 593, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 696, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 705, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 742, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [7 x i8] c"af_map\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 760, i32 18 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 768, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 803, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 814, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [9 x i8] c"dagc_map\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 834, i32 18 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 841, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 860, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 892, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 481, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.225 = private constant [32 x i8] c"../drivers/staging/pi433/rf69.c\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 488, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [34 x i8] c"switch.table.rf69_set_dio_mapping\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [37 x i8] c"switch.table.rf69_set_dio_mapping.49\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [37 x i8] c"switch.table.rf69_set_dio_mapping.50\00", align 1
@llvm.compiler.used = appending global [59 x ptr] [ptr @rf69_set_mode.mode_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rf69_set_modulation.modulation_map, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @rf69_set_pa_ramp.pa_ramp_map, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @rf69_set_lna_gain.lna_gain_map, ptr @.str.23, ptr @.str.24, ptr @rf69_set_ook_threshold_dec.td_map, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @rf69_set_address_filtering.af_map, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @rf69_set_dagc.dagc_map, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @switch.table.rf69_set_dio_mapping, ptr @switch.table.rf69_set_dio_mapping.49, ptr @switch.table.rf69_set_dio_mapping.50], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf69_set_mode.mode_map to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf69_set_modulation.modulation_map to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf69_set_pa_ramp.pa_ramp_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf69_set_lna_gain.lna_gain_map to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf69_set_ook_threshold_dec.td_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf69_set_address_filtering.af_map to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf69_set_dagc.dagc_map to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rf69_set_dio_mapping to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rf69_set_dio_mapping.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rf69_set_dio_mapping.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_mode(ptr noundef %spi, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i.i = alloca [2 x i8], align 1
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %cmp = icmp ugt i32 %mode, 4
  br i1 %cmp, label %do.body, label %if.end10, !prof !124

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_mode.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_mode, %if.then9)) #3
          to label %return [label %if.then9], !srcloc !125

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_mode.__UNIQUE_ID_ddebug230, ptr noundef %spi, ptr noundef nonnull @.str.3, i32 noundef %mode) #3
  br label %return

if.end10:                                         ; preds = %entry
  %arrayidx = getelementptr [5 x i8], ptr @rf69_set_mode.mode_map, i32 0, i32 %mode
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %2 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #3
  %3 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !126
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end10.rf69_read_reg.exit.i_crit_edge, label %cond.false.i.i.i

if.end10.rf69_read_reg.exit.i_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit.i

cond.false.i.i.i:                                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %result.i.i.i, align 1
  %conv.i.i.i = zext i8 %5 to i32
  br label %rf69_read_reg.exit.i

rf69_read_reg.exit.i:                             ; preds = %cond.false.i.i.i, %if.end10.rf69_read_reg.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv.i.i.i, %cond.false.i.i.i ], [ %call.i.i.i, %if.end10.rf69_read_reg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %conv.i.i = trunc i32 %cond.i.i.i to i8
  %and.i = and i8 %conv.i.i, -29
  %or.i = or i8 %and.i, %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i) #3
  %6 = getelementptr inbounds [2 x i8], ptr %buffer.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -127, ptr %buffer.i.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or.i, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #3
  %9 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buffer.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  %13 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge

rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge: ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_mod_write.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %rf69_read_mod_write.exit

rf69_read_mod_write.exit:                         ; preds = %if.end.i.i.i.i.i.i.i.i, %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i) #3
  br label %return

return:                                           ; preds = %rf69_read_mod_write.exit, %if.then9, %do.body
  %retval.0 = phi i32 [ %call.i.i.i.i, %rf69_read_mod_write.exit ], [ -22, %if.then9 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_data_mode(ptr noundef %spi, i8 noundef zeroext %data_mode) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i.i = alloca [2 x i8], align 1
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %0 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #3
  %1 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !126
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.rf69_read_reg.exit.i_crit_edge, label %cond.false.i.i.i

entry.rf69_read_reg.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit.i

cond.false.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %result.i.i.i, align 1
  %conv.i.i.i = zext i8 %3 to i32
  br label %rf69_read_reg.exit.i

rf69_read_reg.exit.i:                             ; preds = %cond.false.i.i.i, %entry.rf69_read_reg.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv.i.i.i, %cond.false.i.i.i ], [ %call.i.i.i, %entry.rf69_read_reg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %conv.i.i = trunc i32 %cond.i.i.i to i8
  %and.i = and i8 %conv.i.i, -7
  %or.i = or i8 %and.i, %data_mode
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i) #3
  %4 = getelementptr inbounds [2 x i8], ptr %buffer.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -126, ptr %buffer.i.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or.i, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #3
  %7 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 92)
  %9 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buffer.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  %11 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge

rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge: ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_mod_write.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %rf69_read_mod_write.exit

rf69_read_mod_write.exit:                         ; preds = %if.end.i.i.i.i.i.i.i.i, %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i) #3
  ret i32 %call.i.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_modulation(ptr noundef %spi, i32 noundef %modulation) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i.i = alloca [2 x i8], align 1
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %modulation)
  %cmp = icmp ugt i32 %modulation, 1
  br i1 %cmp, label %do.body, label %if.end10, !prof !124

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_modulation.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_modulation, %if.then9)) #3
          to label %return [label %if.then9], !srcloc !125

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_modulation.__UNIQUE_ID_ddebug231, ptr noundef %spi, ptr noundef nonnull @.str.5, i32 noundef %modulation) #3
  br label %return

if.end10:                                         ; preds = %entry
  %arrayidx = getelementptr [2 x i8], ptr @rf69_set_modulation.modulation_map, i32 0, i32 %modulation
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %2 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #3
  %3 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !126
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end10.rf69_read_reg.exit.i_crit_edge, label %cond.false.i.i.i

if.end10.rf69_read_reg.exit.i_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit.i

cond.false.i.i.i:                                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %result.i.i.i, align 1
  %conv.i.i.i = zext i8 %5 to i32
  br label %rf69_read_reg.exit.i

rf69_read_reg.exit.i:                             ; preds = %cond.false.i.i.i, %if.end10.rf69_read_reg.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv.i.i.i, %cond.false.i.i.i ], [ %call.i.i.i, %if.end10.rf69_read_reg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %conv.i.i = trunc i32 %cond.i.i.i to i8
  %and.i = and i8 %conv.i.i, -25
  %or.i = or i8 %and.i, %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i) #3
  %6 = getelementptr inbounds [2 x i8], ptr %buffer.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -126, ptr %buffer.i.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or.i, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #3
  %9 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buffer.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  %13 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge

rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge: ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_mod_write.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %rf69_read_mod_write.exit

rf69_read_mod_write.exit:                         ; preds = %if.end.i.i.i.i.i.i.i.i, %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i) #3
  br label %return

return:                                           ; preds = %rf69_read_mod_write.exit, %if.then9, %do.body
  %retval.0 = phi i32 [ %call.i.i.i.i, %rf69_read_mod_write.exit ], [ -22, %if.then9 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_modulation_shaping(ptr noundef %spi, i32 noundef %mod_shaping) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i.i197 = alloca %struct.spi_message, align 4
  %t.i.i.i198 = alloca %struct.spi_transfer, align 4
  %buffer.i.i199 = alloca [2 x i8], align 1
  %cmd.addr.i.i.i200 = alloca i8, align 1
  %result.i.i.i201 = alloca i8, align 1
  %msg.i.i.i.i173 = alloca %struct.spi_message, align 4
  %t.i.i.i174 = alloca %struct.spi_transfer, align 4
  %buffer.i.i175 = alloca [2 x i8], align 1
  %cmd.addr.i.i.i176 = alloca i8, align 1
  %result.i.i.i177 = alloca i8, align 1
  %msg.i.i.i.i150 = alloca %struct.spi_message, align 4
  %t.i.i.i151 = alloca %struct.spi_transfer, align 4
  %buffer.i.i152 = alloca [2 x i8], align 1
  %cmd.addr.i.i.i153 = alloca i8, align 1
  %result.i.i.i154 = alloca i8, align 1
  %msg.i.i.i.i126 = alloca %struct.spi_message, align 4
  %t.i.i.i127 = alloca %struct.spi_transfer, align 4
  %buffer.i.i128 = alloca [2 x i8], align 1
  %cmd.addr.i.i.i129 = alloca i8, align 1
  %result.i.i.i130 = alloca i8, align 1
  %msg.i.i.i.i102 = alloca %struct.spi_message, align 4
  %t.i.i.i103 = alloca %struct.spi_transfer, align 4
  %buffer.i.i104 = alloca [2 x i8], align 1
  %cmd.addr.i.i.i105 = alloca i8, align 1
  %result.i.i.i106 = alloca i8, align 1
  %msg.i.i.i.i79 = alloca %struct.spi_message, align 4
  %t.i.i.i80 = alloca %struct.spi_transfer, align 4
  %buffer.i.i81 = alloca [2 x i8], align 1
  %cmd.addr.i.i.i82 = alloca i8, align 1
  %result.i.i.i83 = alloca i8, align 1
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i.i = alloca [2 x i8], align 1
  %cmd.addr.i.i.i72 = alloca i8, align 1
  %result.i.i.i73 = alloca i8, align 1
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %0 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #3
  %1 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !126
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.rf69_get_modulation.exit_crit_edge, label %cond.false.i.i.i

entry.rf69_get_modulation.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_get_modulation.exit

cond.false.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %result.i.i.i, align 1
  %conv.i.i.i = zext i8 %3 to i32
  br label %rf69_get_modulation.exit

rf69_get_modulation.exit:                         ; preds = %cond.false.i.i.i, %entry.rf69_get_modulation.exit_crit_edge
  %cond.i.i.i = phi i32 [ %conv.i.i.i, %cond.false.i.i.i ], [ %call.i.i.i, %entry.rf69_get_modulation.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %4 = and i32 %cond.i.i.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %switch.selectcmp.i = icmp eq i32 %4, 0
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %switch.selectcmp2.i = icmp eq i32 %4, 8
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 0, i32 %switch.select.i
  %5 = zext i32 %switch.select3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %switch.select3.i, label %do.body37 [
    i32 1, label %sw.bb
    i32 0, label %sw.bb12
  ]

sw.bb:                                            ; preds = %rf69_get_modulation.exit
  %6 = zext i32 %mod_shaping to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %mod_shaping, label %do.body [
    i32 0, label %sw.bb1
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
  ]

sw.bb1:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i72) #3
  %7 = ptrtoint ptr %cmd.addr.i.i.i72 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %cmd.addr.i.i.i72, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i73) #3
  %8 = ptrtoint ptr %result.i.i.i73 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %result.i.i.i73, align 1, !annotation !126
  %call.i.i.i74 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i72, i32 noundef 1, ptr noundef nonnull %result.i.i.i73, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i74)
  %cmp.i.i.i75 = icmp slt i32 %call.i.i.i74, 0
  br i1 %cmp.i.i.i75, label %sw.bb1.rf69_read_reg.exit.i_crit_edge, label %cond.false.i.i.i77

sw.bb1.rf69_read_reg.exit.i_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit.i

cond.false.i.i.i77:                               ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %result.i.i.i73 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %result.i.i.i73, align 1
  %conv.i.i.i76 = zext i8 %10 to i32
  br label %rf69_read_reg.exit.i

rf69_read_reg.exit.i:                             ; preds = %cond.false.i.i.i77, %sw.bb1.rf69_read_reg.exit.i_crit_edge
  %cond.i.i.i78 = phi i32 [ %conv.i.i.i76, %cond.false.i.i.i77 ], [ %call.i.i.i74, %sw.bb1.rf69_read_reg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i73) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i72) #3
  %conv.i.i = trunc i32 %cond.i.i.i78 to i8
  %and.i = and i8 %conv.i.i, -4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i) #3
  %11 = getelementptr inbounds [2 x i8], ptr %buffer.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -126, ptr %buffer.i.i, align 1
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %and.i, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #3
  %14 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 92)
  %16 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buffer.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  %18 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge

rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge: ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_mod_write.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %rf69_read_mod_write.exit

rf69_read_mod_write.exit:                         ; preds = %if.end.i.i.i.i.i.i.i.i, %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i) #3
  br label %return

sw.bb3:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i82) #3
  %28 = ptrtoint ptr %cmd.addr.i.i.i82 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 2, ptr %cmd.addr.i.i.i82, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i83) #3
  %29 = ptrtoint ptr %result.i.i.i83 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %result.i.i.i83, align 1, !annotation !126
  %call.i.i.i84 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i82, i32 noundef 1, ptr noundef nonnull %result.i.i.i83, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i84)
  %cmp.i.i.i85 = icmp slt i32 %call.i.i.i84, 0
  br i1 %cmp.i.i.i85, label %sw.bb3.rf69_read_reg.exit.i97_crit_edge, label %cond.false.i.i.i87

sw.bb3.rf69_read_reg.exit.i97_crit_edge:          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit.i97

cond.false.i.i.i87:                               ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %result.i.i.i83 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %result.i.i.i83, align 1
  %conv.i.i.i86 = zext i8 %31 to i32
  br label %rf69_read_reg.exit.i97

rf69_read_reg.exit.i97:                           ; preds = %cond.false.i.i.i87, %sw.bb3.rf69_read_reg.exit.i97_crit_edge
  %cond.i.i.i88 = phi i32 [ %conv.i.i.i86, %cond.false.i.i.i87 ], [ %call.i.i.i84, %sw.bb3.rf69_read_reg.exit.i97_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i83) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i82) #3
  %conv.i.i89 = trunc i32 %cond.i.i.i88 to i8
  %and.i90 = and i8 %conv.i.i89, -4
  %or.i = or i8 %and.i90, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i81) #3
  %32 = getelementptr inbounds [2 x i8], ptr %buffer.i.i81, i32 0, i32 1
  %33 = ptrtoint ptr %buffer.i.i81 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -126, ptr %buffer.i.i81, align 1
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %or.i, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i80) #3
  %35 = getelementptr inbounds i8, ptr %t.i.i.i80, i32 4
  %36 = call ptr @memset(ptr %35, i32 0, i32 92)
  %37 = ptrtoint ptr %t.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %buffer.i.i81, ptr %t.i.i.i80, align 4
  %len1.i.i.i91 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i80, i32 0, i32 2
  %38 = ptrtoint ptr %len1.i.i.i91 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %len1.i.i.i91, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i79) #3
  %39 = getelementptr inbounds i8, ptr %msg.i.i.i.i79, i32 8
  %40 = call ptr @memset(ptr %39, i32 0, i32 40)
  %41 = ptrtoint ptr %msg.i.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %msg.i.i.i.i79, ptr %msg.i.i.i.i79, align 4
  %prev.i.i.i.i.i.i.i.i92 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i79, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i.i.i.i79, ptr %prev.i.i.i.i.i.i.i.i92, align 4
  %resources.i.i.i.i.i.i.i93 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i79, i32 0, i32 10
  %43 = ptrtoint ptr %resources.i.i.i.i.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %resources.i.i.i.i.i.i.i93, ptr %resources.i.i.i.i.i.i.i93, align 4
  %prev.i2.i.i.i.i.i.i.i94 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i79, i32 0, i32 10, i32 1
  %44 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %resources.i.i.i.i.i.i.i93, ptr %prev.i2.i.i.i.i.i.i.i94, align 4
  %transfer_list.i.i.i.i.i.i95 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i80, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i96 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i95, ptr noundef nonnull %msg.i.i.i.i79, ptr noundef nonnull %msg.i.i.i.i79) #3
  br i1 %call.i.i.i.i.i.i.i.i96, label %if.end.i.i.i.i.i.i.i.i99, label %rf69_read_reg.exit.i97.rf69_read_mod_write.exit101_crit_edge

rf69_read_reg.exit.i97.rf69_read_mod_write.exit101_crit_edge: ; preds = %rf69_read_reg.exit.i97
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_mod_write.exit101

if.end.i.i.i.i.i.i.i.i99:                         ; preds = %rf69_read_reg.exit.i97
  call void @__sanitizer_cov_trace_pc() #5
  %45 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %transfer_list.i.i.i.i.i.i95, ptr %prev.i.i.i.i.i.i.i.i92, align 4
  %46 = ptrtoint ptr %transfer_list.i.i.i.i.i.i95 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i.i.i79, ptr %transfer_list.i.i.i.i.i.i95, align 4
  %prev3.i.i.i.i.i.i.i.i98 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i80, i32 0, i32 18, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i98 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i.i.i79, ptr %prev3.i.i.i.i.i.i.i.i98, align 4
  %48 = ptrtoint ptr %msg.i.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %transfer_list.i.i.i.i.i.i95, ptr %msg.i.i.i.i79, align 4
  br label %rf69_read_mod_write.exit101

rf69_read_mod_write.exit101:                      ; preds = %if.end.i.i.i.i.i.i.i.i99, %rf69_read_reg.exit.i97.rf69_read_mod_write.exit101_crit_edge
  %call.i.i.i.i100 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i79) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i79) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i80) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i81) #3
  br label %return

sw.bb5:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i105) #3
  %49 = ptrtoint ptr %cmd.addr.i.i.i105 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %cmd.addr.i.i.i105, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i106) #3
  %50 = ptrtoint ptr %result.i.i.i106 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %result.i.i.i106, align 1, !annotation !126
  %call.i.i.i107 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i105, i32 noundef 1, ptr noundef nonnull %result.i.i.i106, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i107)
  %cmp.i.i.i108 = icmp slt i32 %call.i.i.i107, 0
  br i1 %cmp.i.i.i108, label %sw.bb5.rf69_read_reg.exit.i121_crit_edge, label %cond.false.i.i.i110

sw.bb5.rf69_read_reg.exit.i121_crit_edge:         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit.i121

cond.false.i.i.i110:                              ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  %51 = ptrtoint ptr %result.i.i.i106 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %result.i.i.i106, align 1
  %conv.i.i.i109 = zext i8 %52 to i32
  br label %rf69_read_reg.exit.i121

rf69_read_reg.exit.i121:                          ; preds = %cond.false.i.i.i110, %sw.bb5.rf69_read_reg.exit.i121_crit_edge
  %cond.i.i.i111 = phi i32 [ %conv.i.i.i109, %cond.false.i.i.i110 ], [ %call.i.i.i107, %sw.bb5.rf69_read_reg.exit.i121_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i106) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i105) #3
  %conv.i.i112 = trunc i32 %cond.i.i.i111 to i8
  %and.i113 = and i8 %conv.i.i112, -4
  %or.i114 = or i8 %and.i113, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i104) #3
  %53 = getelementptr inbounds [2 x i8], ptr %buffer.i.i104, i32 0, i32 1
  %54 = ptrtoint ptr %buffer.i.i104 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -126, ptr %buffer.i.i104, align 1
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %or.i114, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i103) #3
  %56 = getelementptr inbounds i8, ptr %t.i.i.i103, i32 4
  %57 = call ptr @memset(ptr %56, i32 0, i32 92)
  %58 = ptrtoint ptr %t.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %buffer.i.i104, ptr %t.i.i.i103, align 4
  %len1.i.i.i115 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i103, i32 0, i32 2
  %59 = ptrtoint ptr %len1.i.i.i115 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %len1.i.i.i115, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i102) #3
  %60 = getelementptr inbounds i8, ptr %msg.i.i.i.i102, i32 8
  %61 = call ptr @memset(ptr %60, i32 0, i32 40)
  %62 = ptrtoint ptr %msg.i.i.i.i102 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %msg.i.i.i.i102, ptr %msg.i.i.i.i102, align 4
  %prev.i.i.i.i.i.i.i.i116 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i102, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i116 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %msg.i.i.i.i102, ptr %prev.i.i.i.i.i.i.i.i116, align 4
  %resources.i.i.i.i.i.i.i117 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i102, i32 0, i32 10
  %64 = ptrtoint ptr %resources.i.i.i.i.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %resources.i.i.i.i.i.i.i117, ptr %resources.i.i.i.i.i.i.i117, align 4
  %prev.i2.i.i.i.i.i.i.i118 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i102, i32 0, i32 10, i32 1
  %65 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i118 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %resources.i.i.i.i.i.i.i117, ptr %prev.i2.i.i.i.i.i.i.i118, align 4
  %transfer_list.i.i.i.i.i.i119 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i103, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i120 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i119, ptr noundef nonnull %msg.i.i.i.i102, ptr noundef nonnull %msg.i.i.i.i102) #3
  br i1 %call.i.i.i.i.i.i.i.i120, label %if.end.i.i.i.i.i.i.i.i123, label %rf69_read_reg.exit.i121.rf69_read_mod_write.exit125_crit_edge

rf69_read_reg.exit.i121.rf69_read_mod_write.exit125_crit_edge: ; preds = %rf69_read_reg.exit.i121
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_mod_write.exit125

if.end.i.i.i.i.i.i.i.i123:                        ; preds = %rf69_read_reg.exit.i121
  call void @__sanitizer_cov_trace_pc() #5
  %66 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i116 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %transfer_list.i.i.i.i.i.i119, ptr %prev.i.i.i.i.i.i.i.i116, align 4
  %67 = ptrtoint ptr %transfer_list.i.i.i.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %msg.i.i.i.i102, ptr %transfer_list.i.i.i.i.i.i119, align 4
  %prev3.i.i.i.i.i.i.i.i122 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i103, i32 0, i32 18, i32 1
  %68 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg.i.i.i.i102, ptr %prev3.i.i.i.i.i.i.i.i122, align 4
  %69 = ptrtoint ptr %msg.i.i.i.i102 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %transfer_list.i.i.i.i.i.i119, ptr %msg.i.i.i.i102, align 4
  br label %rf69_read_mod_write.exit125

rf69_read_mod_write.exit125:                      ; preds = %if.end.i.i.i.i.i.i.i.i123, %rf69_read_reg.exit.i121.rf69_read_mod_write.exit125_crit_edge
  %call.i.i.i.i124 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i102) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i102) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i103) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i104) #3
  br label %return

sw.bb7:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i129) #3
  %70 = ptrtoint ptr %cmd.addr.i.i.i129 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 2, ptr %cmd.addr.i.i.i129, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i130) #3
  %71 = ptrtoint ptr %result.i.i.i130 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -1, ptr %result.i.i.i130, align 1, !annotation !126
  %call.i.i.i131 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i129, i32 noundef 1, ptr noundef nonnull %result.i.i.i130, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i131)
  %cmp.i.i.i132 = icmp slt i32 %call.i.i.i131, 0
  br i1 %cmp.i.i.i132, label %sw.bb7.rf69_read_reg.exit.i145_crit_edge, label %cond.false.i.i.i134

sw.bb7.rf69_read_reg.exit.i145_crit_edge:         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit.i145

cond.false.i.i.i134:                              ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  %72 = ptrtoint ptr %result.i.i.i130 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %result.i.i.i130, align 1
  %conv.i.i.i133 = zext i8 %73 to i32
  br label %rf69_read_reg.exit.i145

rf69_read_reg.exit.i145:                          ; preds = %cond.false.i.i.i134, %sw.bb7.rf69_read_reg.exit.i145_crit_edge
  %cond.i.i.i135 = phi i32 [ %conv.i.i.i133, %cond.false.i.i.i134 ], [ %call.i.i.i131, %sw.bb7.rf69_read_reg.exit.i145_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i130) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i129) #3
  %conv.i.i136 = trunc i32 %cond.i.i.i135 to i8
  %or.i138 = or i8 %conv.i.i136, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i128) #3
  %74 = getelementptr inbounds [2 x i8], ptr %buffer.i.i128, i32 0, i32 1
  %75 = ptrtoint ptr %buffer.i.i128 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -126, ptr %buffer.i.i128, align 1
  %76 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %or.i138, ptr %74, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i127) #3
  %77 = getelementptr inbounds i8, ptr %t.i.i.i127, i32 4
  %78 = call ptr @memset(ptr %77, i32 0, i32 92)
  %79 = ptrtoint ptr %t.i.i.i127 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %buffer.i.i128, ptr %t.i.i.i127, align 4
  %len1.i.i.i139 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i127, i32 0, i32 2
  %80 = ptrtoint ptr %len1.i.i.i139 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %len1.i.i.i139, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i126) #3
  %81 = getelementptr inbounds i8, ptr %msg.i.i.i.i126, i32 8
  %82 = call ptr @memset(ptr %81, i32 0, i32 40)
  %83 = ptrtoint ptr %msg.i.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %msg.i.i.i.i126, ptr %msg.i.i.i.i126, align 4
  %prev.i.i.i.i.i.i.i.i140 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i126, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i140 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %msg.i.i.i.i126, ptr %prev.i.i.i.i.i.i.i.i140, align 4
  %resources.i.i.i.i.i.i.i141 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i126, i32 0, i32 10
  %85 = ptrtoint ptr %resources.i.i.i.i.i.i.i141 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %resources.i.i.i.i.i.i.i141, ptr %resources.i.i.i.i.i.i.i141, align 4
  %prev.i2.i.i.i.i.i.i.i142 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i126, i32 0, i32 10, i32 1
  %86 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i142 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %resources.i.i.i.i.i.i.i141, ptr %prev.i2.i.i.i.i.i.i.i142, align 4
  %transfer_list.i.i.i.i.i.i143 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i127, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i144 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i143, ptr noundef nonnull %msg.i.i.i.i126, ptr noundef nonnull %msg.i.i.i.i126) #3
  br i1 %call.i.i.i.i.i.i.i.i144, label %if.end.i.i.i.i.i.i.i.i147, label %rf69_read_reg.exit.i145.rf69_read_mod_write.exit149_crit_edge

rf69_read_reg.exit.i145.rf69_read_mod_write.exit149_crit_edge: ; preds = %rf69_read_reg.exit.i145
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_mod_write.exit149

if.end.i.i.i.i.i.i.i.i147:                        ; preds = %rf69_read_reg.exit.i145
  call void @__sanitizer_cov_trace_pc() #5
  %87 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i140 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %transfer_list.i.i.i.i.i.i143, ptr %prev.i.i.i.i.i.i.i.i140, align 4
  %88 = ptrtoint ptr %transfer_list.i.i.i.i.i.i143 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %msg.i.i.i.i126, ptr %transfer_list.i.i.i.i.i.i143, align 4
  %prev3.i.i.i.i.i.i.i.i146 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i127, i32 0, i32 18, i32 1
  %89 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i146 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %msg.i.i.i.i126, ptr %prev3.i.i.i.i.i.i.i.i146, align 4
  %90 = ptrtoint ptr %msg.i.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %transfer_list.i.i.i.i.i.i143, ptr %msg.i.i.i.i126, align 4
  br label %rf69_read_mod_write.exit149

rf69_read_mod_write.exit149:                      ; preds = %if.end.i.i.i.i.i.i.i.i147, %rf69_read_reg.exit.i145.rf69_read_mod_write.exit149_crit_edge
  %call.i.i.i.i148 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i126) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i126) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i127) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i128) #3
  br label %return

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_modulation_shaping.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_modulation_shaping, %if.then)) #3
          to label %return [label %if.then], !srcloc !125

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_modulation_shaping.__UNIQUE_ID_ddebug232, ptr noundef %spi, ptr noundef nonnull @.str.7, i32 noundef %mod_shaping) #3
  br label %return

sw.bb12:                                          ; preds = %rf69_get_modulation.exit
  %91 = zext i32 %mod_shaping to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %mod_shaping, label %do.body20 [
    i32 0, label %sw.bb13
    i32 4, label %sw.bb15
    i32 5, label %sw.bb17
  ]

sw.bb13:                                          ; preds = %sw.bb12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i153) #3
  %92 = ptrtoint ptr %cmd.addr.i.i.i153 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 2, ptr %cmd.addr.i.i.i153, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i154) #3
  %93 = ptrtoint ptr %result.i.i.i154 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -1, ptr %result.i.i.i154, align 1, !annotation !126
  %call.i.i.i155 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i153, i32 noundef 1, ptr noundef nonnull %result.i.i.i154, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i155)
  %cmp.i.i.i156 = icmp slt i32 %call.i.i.i155, 0
  br i1 %cmp.i.i.i156, label %sw.bb13.rf69_read_reg.exit.i168_crit_edge, label %cond.false.i.i.i158

sw.bb13.rf69_read_reg.exit.i168_crit_edge:        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit.i168

cond.false.i.i.i158:                              ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #5
  %94 = ptrtoint ptr %result.i.i.i154 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %result.i.i.i154, align 1
  %conv.i.i.i157 = zext i8 %95 to i32
  br label %rf69_read_reg.exit.i168

rf69_read_reg.exit.i168:                          ; preds = %cond.false.i.i.i158, %sw.bb13.rf69_read_reg.exit.i168_crit_edge
  %cond.i.i.i159 = phi i32 [ %conv.i.i.i157, %cond.false.i.i.i158 ], [ %call.i.i.i155, %sw.bb13.rf69_read_reg.exit.i168_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i154) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i153) #3
  %conv.i.i160 = trunc i32 %cond.i.i.i159 to i8
  %and.i161 = and i8 %conv.i.i160, -4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i152) #3
  %96 = getelementptr inbounds [2 x i8], ptr %buffer.i.i152, i32 0, i32 1
  %97 = ptrtoint ptr %buffer.i.i152 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -126, ptr %buffer.i.i152, align 1
  %98 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %and.i161, ptr %96, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i151) #3
  %99 = getelementptr inbounds i8, ptr %t.i.i.i151, i32 4
  %100 = call ptr @memset(ptr %99, i32 0, i32 92)
  %101 = ptrtoint ptr %t.i.i.i151 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %buffer.i.i152, ptr %t.i.i.i151, align 4
  %len1.i.i.i162 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i151, i32 0, i32 2
  %102 = ptrtoint ptr %len1.i.i.i162 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 2, ptr %len1.i.i.i162, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i150) #3
  %103 = getelementptr inbounds i8, ptr %msg.i.i.i.i150, i32 8
  %104 = call ptr @memset(ptr %103, i32 0, i32 40)
  %105 = ptrtoint ptr %msg.i.i.i.i150 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %msg.i.i.i.i150, ptr %msg.i.i.i.i150, align 4
  %prev.i.i.i.i.i.i.i.i163 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i150, i32 0, i32 1
  %106 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i163 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %msg.i.i.i.i150, ptr %prev.i.i.i.i.i.i.i.i163, align 4
  %resources.i.i.i.i.i.i.i164 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i150, i32 0, i32 10
  %107 = ptrtoint ptr %resources.i.i.i.i.i.i.i164 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %resources.i.i.i.i.i.i.i164, ptr %resources.i.i.i.i.i.i.i164, align 4
  %prev.i2.i.i.i.i.i.i.i165 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i150, i32 0, i32 10, i32 1
  %108 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i165 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %resources.i.i.i.i.i.i.i164, ptr %prev.i2.i.i.i.i.i.i.i165, align 4
  %transfer_list.i.i.i.i.i.i166 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i151, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i167 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i166, ptr noundef nonnull %msg.i.i.i.i150, ptr noundef nonnull %msg.i.i.i.i150) #3
  br i1 %call.i.i.i.i.i.i.i.i167, label %if.end.i.i.i.i.i.i.i.i170, label %rf69_read_reg.exit.i168.rf69_read_mod_write.exit172_crit_edge

rf69_read_reg.exit.i168.rf69_read_mod_write.exit172_crit_edge: ; preds = %rf69_read_reg.exit.i168
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_mod_write.exit172

if.end.i.i.i.i.i.i.i.i170:                        ; preds = %rf69_read_reg.exit.i168
  call void @__sanitizer_cov_trace_pc() #5
  %109 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i163 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %transfer_list.i.i.i.i.i.i166, ptr %prev.i.i.i.i.i.i.i.i163, align 4
  %110 = ptrtoint ptr %transfer_list.i.i.i.i.i.i166 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %msg.i.i.i.i150, ptr %transfer_list.i.i.i.i.i.i166, align 4
  %prev3.i.i.i.i.i.i.i.i169 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i151, i32 0, i32 18, i32 1
  %111 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i169 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %msg.i.i.i.i150, ptr %prev3.i.i.i.i.i.i.i.i169, align 4
  %112 = ptrtoint ptr %msg.i.i.i.i150 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %transfer_list.i.i.i.i.i.i166, ptr %msg.i.i.i.i150, align 4
  br label %rf69_read_mod_write.exit172

rf69_read_mod_write.exit172:                      ; preds = %if.end.i.i.i.i.i.i.i.i170, %rf69_read_reg.exit.i168.rf69_read_mod_write.exit172_crit_edge
  %call.i.i.i.i171 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i150) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i150) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i151) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i152) #3
  br label %return

sw.bb15:                                          ; preds = %sw.bb12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i176) #3
  %113 = ptrtoint ptr %cmd.addr.i.i.i176 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 2, ptr %cmd.addr.i.i.i176, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i177) #3
  %114 = ptrtoint ptr %result.i.i.i177 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -1, ptr %result.i.i.i177, align 1, !annotation !126
  %call.i.i.i178 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i176, i32 noundef 1, ptr noundef nonnull %result.i.i.i177, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i178)
  %cmp.i.i.i179 = icmp slt i32 %call.i.i.i178, 0
  br i1 %cmp.i.i.i179, label %sw.bb15.rf69_read_reg.exit.i192_crit_edge, label %cond.false.i.i.i181

sw.bb15.rf69_read_reg.exit.i192_crit_edge:        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit.i192

cond.false.i.i.i181:                              ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #5
  %115 = ptrtoint ptr %result.i.i.i177 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %result.i.i.i177, align 1
  %conv.i.i.i180 = zext i8 %116 to i32
  br label %rf69_read_reg.exit.i192

rf69_read_reg.exit.i192:                          ; preds = %cond.false.i.i.i181, %sw.bb15.rf69_read_reg.exit.i192_crit_edge
  %cond.i.i.i182 = phi i32 [ %conv.i.i.i180, %cond.false.i.i.i181 ], [ %call.i.i.i178, %sw.bb15.rf69_read_reg.exit.i192_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i177) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i176) #3
  %conv.i.i183 = trunc i32 %cond.i.i.i182 to i8
  %and.i184 = and i8 %conv.i.i183, -4
  %or.i185 = or i8 %and.i184, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i175) #3
  %117 = getelementptr inbounds [2 x i8], ptr %buffer.i.i175, i32 0, i32 1
  %118 = ptrtoint ptr %buffer.i.i175 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 -126, ptr %buffer.i.i175, align 1
  %119 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %or.i185, ptr %117, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i174) #3
  %120 = getelementptr inbounds i8, ptr %t.i.i.i174, i32 4
  %121 = call ptr @memset(ptr %120, i32 0, i32 92)
  %122 = ptrtoint ptr %t.i.i.i174 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %buffer.i.i175, ptr %t.i.i.i174, align 4
  %len1.i.i.i186 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i174, i32 0, i32 2
  %123 = ptrtoint ptr %len1.i.i.i186 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 2, ptr %len1.i.i.i186, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i173) #3
  %124 = getelementptr inbounds i8, ptr %msg.i.i.i.i173, i32 8
  %125 = call ptr @memset(ptr %124, i32 0, i32 40)
  %126 = ptrtoint ptr %msg.i.i.i.i173 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %msg.i.i.i.i173, ptr %msg.i.i.i.i173, align 4
  %prev.i.i.i.i.i.i.i.i187 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i173, i32 0, i32 1
  %127 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i187 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %msg.i.i.i.i173, ptr %prev.i.i.i.i.i.i.i.i187, align 4
  %resources.i.i.i.i.i.i.i188 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i173, i32 0, i32 10
  %128 = ptrtoint ptr %resources.i.i.i.i.i.i.i188 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %resources.i.i.i.i.i.i.i188, ptr %resources.i.i.i.i.i.i.i188, align 4
  %prev.i2.i.i.i.i.i.i.i189 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i173, i32 0, i32 10, i32 1
  %129 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i189 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %resources.i.i.i.i.i.i.i188, ptr %prev.i2.i.i.i.i.i.i.i189, align 4
  %transfer_list.i.i.i.i.i.i190 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i174, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i191 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i190, ptr noundef nonnull %msg.i.i.i.i173, ptr noundef nonnull %msg.i.i.i.i173) #3
  br i1 %call.i.i.i.i.i.i.i.i191, label %if.end.i.i.i.i.i.i.i.i194, label %rf69_read_reg.exit.i192.rf69_read_mod_write.exit196_crit_edge

rf69_read_reg.exit.i192.rf69_read_mod_write.exit196_crit_edge: ; preds = %rf69_read_reg.exit.i192
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_mod_write.exit196

if.end.i.i.i.i.i.i.i.i194:                        ; preds = %rf69_read_reg.exit.i192
  call void @__sanitizer_cov_trace_pc() #5
  %130 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i187 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %transfer_list.i.i.i.i.i.i190, ptr %prev.i.i.i.i.i.i.i.i187, align 4
  %131 = ptrtoint ptr %transfer_list.i.i.i.i.i.i190 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %msg.i.i.i.i173, ptr %transfer_list.i.i.i.i.i.i190, align 4
  %prev3.i.i.i.i.i.i.i.i193 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i174, i32 0, i32 18, i32 1
  %132 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i193 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %msg.i.i.i.i173, ptr %prev3.i.i.i.i.i.i.i.i193, align 4
  %133 = ptrtoint ptr %msg.i.i.i.i173 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %transfer_list.i.i.i.i.i.i190, ptr %msg.i.i.i.i173, align 4
  br label %rf69_read_mod_write.exit196

rf69_read_mod_write.exit196:                      ; preds = %if.end.i.i.i.i.i.i.i.i194, %rf69_read_reg.exit.i192.rf69_read_mod_write.exit196_crit_edge
  %call.i.i.i.i195 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i173) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i173) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i174) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i175) #3
  br label %return

sw.bb17:                                          ; preds = %sw.bb12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i200) #3
  %134 = ptrtoint ptr %cmd.addr.i.i.i200 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 2, ptr %cmd.addr.i.i.i200, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i201) #3
  %135 = ptrtoint ptr %result.i.i.i201 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -1, ptr %result.i.i.i201, align 1, !annotation !126
  %call.i.i.i202 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i200, i32 noundef 1, ptr noundef nonnull %result.i.i.i201, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i202)
  %cmp.i.i.i203 = icmp slt i32 %call.i.i.i202, 0
  br i1 %cmp.i.i.i203, label %sw.bb17.rf69_read_reg.exit.i216_crit_edge, label %cond.false.i.i.i205

sw.bb17.rf69_read_reg.exit.i216_crit_edge:        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit.i216

cond.false.i.i.i205:                              ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #5
  %136 = ptrtoint ptr %result.i.i.i201 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %result.i.i.i201, align 1
  %conv.i.i.i204 = zext i8 %137 to i32
  br label %rf69_read_reg.exit.i216

rf69_read_reg.exit.i216:                          ; preds = %cond.false.i.i.i205, %sw.bb17.rf69_read_reg.exit.i216_crit_edge
  %cond.i.i.i206 = phi i32 [ %conv.i.i.i204, %cond.false.i.i.i205 ], [ %call.i.i.i202, %sw.bb17.rf69_read_reg.exit.i216_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i201) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i200) #3
  %conv.i.i207 = trunc i32 %cond.i.i.i206 to i8
  %and.i208 = and i8 %conv.i.i207, -4
  %or.i209 = or i8 %and.i208, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i199) #3
  %138 = getelementptr inbounds [2 x i8], ptr %buffer.i.i199, i32 0, i32 1
  %139 = ptrtoint ptr %buffer.i.i199 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 -126, ptr %buffer.i.i199, align 1
  %140 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %or.i209, ptr %138, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i198) #3
  %141 = getelementptr inbounds i8, ptr %t.i.i.i198, i32 4
  %142 = call ptr @memset(ptr %141, i32 0, i32 92)
  %143 = ptrtoint ptr %t.i.i.i198 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %buffer.i.i199, ptr %t.i.i.i198, align 4
  %len1.i.i.i210 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i198, i32 0, i32 2
  %144 = ptrtoint ptr %len1.i.i.i210 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 2, ptr %len1.i.i.i210, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i197) #3
  %145 = getelementptr inbounds i8, ptr %msg.i.i.i.i197, i32 8
  %146 = call ptr @memset(ptr %145, i32 0, i32 40)
  %147 = ptrtoint ptr %msg.i.i.i.i197 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %msg.i.i.i.i197, ptr %msg.i.i.i.i197, align 4
  %prev.i.i.i.i.i.i.i.i211 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i197, i32 0, i32 1
  %148 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i211 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %msg.i.i.i.i197, ptr %prev.i.i.i.i.i.i.i.i211, align 4
  %resources.i.i.i.i.i.i.i212 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i197, i32 0, i32 10
  %149 = ptrtoint ptr %resources.i.i.i.i.i.i.i212 to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %resources.i.i.i.i.i.i.i212, ptr %resources.i.i.i.i.i.i.i212, align 4
  %prev.i2.i.i.i.i.i.i.i213 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i197, i32 0, i32 10, i32 1
  %150 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i213 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %resources.i.i.i.i.i.i.i212, ptr %prev.i2.i.i.i.i.i.i.i213, align 4
  %transfer_list.i.i.i.i.i.i214 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i198, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i215 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i214, ptr noundef nonnull %msg.i.i.i.i197, ptr noundef nonnull %msg.i.i.i.i197) #3
  br i1 %call.i.i.i.i.i.i.i.i215, label %if.end.i.i.i.i.i.i.i.i218, label %rf69_read_reg.exit.i216.rf69_read_mod_write.exit220_crit_edge

rf69_read_reg.exit.i216.rf69_read_mod_write.exit220_crit_edge: ; preds = %rf69_read_reg.exit.i216
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_mod_write.exit220

if.end.i.i.i.i.i.i.i.i218:                        ; preds = %rf69_read_reg.exit.i216
  call void @__sanitizer_cov_trace_pc() #5
  %151 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i211 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %transfer_list.i.i.i.i.i.i214, ptr %prev.i.i.i.i.i.i.i.i211, align 4
  %152 = ptrtoint ptr %transfer_list.i.i.i.i.i.i214 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %msg.i.i.i.i197, ptr %transfer_list.i.i.i.i.i.i214, align 4
  %prev3.i.i.i.i.i.i.i.i217 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i198, i32 0, i32 18, i32 1
  %153 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i217 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %msg.i.i.i.i197, ptr %prev3.i.i.i.i.i.i.i.i217, align 4
  %154 = ptrtoint ptr %msg.i.i.i.i197 to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %transfer_list.i.i.i.i.i.i214, ptr %msg.i.i.i.i197, align 4
  br label %rf69_read_mod_write.exit220

rf69_read_mod_write.exit220:                      ; preds = %if.end.i.i.i.i.i.i.i.i218, %rf69_read_reg.exit.i216.rf69_read_mod_write.exit220_crit_edge
  %call.i.i.i.i219 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i197) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i197) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i198) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i199) #3
  br label %return

do.body20:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_modulation_shaping.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_modulation_shaping, %if.then32)) #3
          to label %return [label %if.then32], !srcloc !125

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_modulation_shaping.__UNIQUE_ID_ddebug233, ptr noundef %spi, ptr noundef nonnull @.str.8, i32 noundef %mod_shaping) #3
  br label %return

do.body37:                                        ; preds = %rf69_get_modulation.exit
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_modulation_shaping.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_modulation_shaping, %if.then49)) #3
          to label %return [label %if.then49], !srcloc !125

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_modulation_shaping.__UNIQUE_ID_ddebug234, ptr noundef %spi, ptr noundef nonnull @.str.9) #3
  br label %return

return:                                           ; preds = %if.then49, %do.body37, %if.then32, %do.body20, %rf69_read_mod_write.exit220, %rf69_read_mod_write.exit196, %rf69_read_mod_write.exit172, %if.then, %do.body, %rf69_read_mod_write.exit149, %rf69_read_mod_write.exit125, %rf69_read_mod_write.exit101, %rf69_read_mod_write.exit
  %retval.0 = phi i32 [ %call.i.i.i.i219, %rf69_read_mod_write.exit220 ], [ %call.i.i.i.i195, %rf69_read_mod_write.exit196 ], [ %call.i.i.i.i171, %rf69_read_mod_write.exit172 ], [ %call.i.i.i.i148, %rf69_read_mod_write.exit149 ], [ %call.i.i.i.i124, %rf69_read_mod_write.exit125 ], [ %call.i.i.i.i100, %rf69_read_mod_write.exit101 ], [ %call.i.i.i.i, %rf69_read_mod_write.exit ], [ -22, %if.then ], [ -22, %if.then32 ], [ -22, %if.then49 ], [ -22, %do.body ], [ -22, %do.body20 ], [ -22, %do.body37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_bit_rate(ptr noundef %spi, i16 noundef zeroext %bit_rate) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i30 = alloca %struct.spi_message, align 4
  %t.i.i31 = alloca %struct.spi_transfer, align 4
  %buffer.i32 = alloca [2 x i8], align 1
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %bit_rate)
  %cmp = icmp ult i16 %bit_rate, 3
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_bit_rate.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_bit_rate, %if.then5)) #3
          to label %cleanup [label %if.then5], !srcloc !125

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_bit_rate.__UNIQUE_ID_ddebug235, ptr noundef %spi, ptr noundef nonnull @.str.11) #3
  br label %cleanup

if.end6:                                          ; preds = %entry
  %conv = zext i16 %bit_rate to i32
  %div = udiv i32 32000000, %conv
  %and = lshr i32 %div, 8
  %conv8 = trunc i32 %and to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #3
  %0 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %1 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -125, ptr %buffer.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv8, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #3
  %3 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %5 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  %7 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end6.rf69_write_reg.exit_crit_edge

if.end6.rf69_write_reg.exit_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %rf69_write_reg.exit

rf69_write_reg.exit:                              ; preds = %if.end.i.i.i.i.i.i.i, %if.end6.rf69_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool12.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool12.not, label %if.end14, label %rf69_write_reg.exit.cleanup_crit_edge

rf69_write_reg.exit.cleanup_crit_edge:            ; preds = %rf69_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end14:                                         ; preds = %rf69_write_reg.exit
  %conv10 = trunc i32 %div to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i32) #3
  %17 = getelementptr inbounds [2 x i8], ptr %buffer.i32, i32 0, i32 1
  %18 = ptrtoint ptr %buffer.i32 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -124, ptr %buffer.i32, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv10, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i31) #3
  %20 = getelementptr inbounds i8, ptr %t.i.i31, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 92)
  %22 = ptrtoint ptr %t.i.i31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buffer.i32, ptr %t.i.i31, align 4
  %len1.i.i33 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i31, i32 0, i32 2
  %23 = ptrtoint ptr %len1.i.i33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %len1.i.i33, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i30) #3
  %24 = getelementptr inbounds i8, ptr %msg.i.i.i30, i32 8
  %25 = call ptr @memset(ptr %24, i32 0, i32 40)
  %26 = ptrtoint ptr %msg.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %msg.i.i.i30, ptr %msg.i.i.i30, align 4
  %prev.i.i.i.i.i.i.i34 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i30, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i30, ptr %prev.i.i.i.i.i.i.i34, align 4
  %resources.i.i.i.i.i.i35 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i30, i32 0, i32 10
  %28 = ptrtoint ptr %resources.i.i.i.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %resources.i.i.i.i.i.i35, ptr %resources.i.i.i.i.i.i35, align 4
  %prev.i2.i.i.i.i.i.i36 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i30, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %prev.i2.i.i.i.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %resources.i.i.i.i.i.i35, ptr %prev.i2.i.i.i.i.i.i36, align 4
  %transfer_list.i.i.i.i.i37 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i31, i32 0, i32 18
  %call.i.i.i.i.i.i.i38 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i37, ptr noundef nonnull %msg.i.i.i30, ptr noundef nonnull %msg.i.i.i30) #3
  br i1 %call.i.i.i.i.i.i.i38, label %if.end.i.i.i.i.i.i.i40, label %if.end14.rf69_write_reg.exit42_crit_edge

if.end14.rf69_write_reg.exit42_crit_edge:         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit42

if.end.i.i.i.i.i.i.i40:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %prev.i.i.i.i.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %transfer_list.i.i.i.i.i37, ptr %prev.i.i.i.i.i.i.i34, align 4
  %31 = ptrtoint ptr %transfer_list.i.i.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i.i30, ptr %transfer_list.i.i.i.i.i37, align 4
  %prev3.i.i.i.i.i.i.i39 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i31, i32 0, i32 18, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i.i.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i.i30, ptr %prev3.i.i.i.i.i.i.i39, align 4
  %33 = ptrtoint ptr %msg.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %transfer_list.i.i.i.i.i37, ptr %msg.i.i.i30, align 4
  br label %rf69_write_reg.exit42

rf69_write_reg.exit42:                            ; preds = %if.end.i.i.i.i.i.i.i40, %if.end14.rf69_write_reg.exit42_crit_edge
  %call.i.i.i41 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i30) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i30) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i31) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i32) #3
  br label %cleanup

cleanup:                                          ; preds = %rf69_write_reg.exit42, %rf69_write_reg.exit.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ -22, %if.then5 ], [ %call.i.i.i, %rf69_write_reg.exit.cleanup_crit_edge ], [ %call.i.i.i41, %rf69_write_reg.exit42 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_deviation(ptr noundef %spi, i32 noundef %deviation) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i666 = alloca %struct.spi_message, align 4
  %t.i.i667 = alloca %struct.spi_transfer, align 4
  %buffer.i668 = alloca [2 x i8], align 1
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i = alloca [2 x i8], align 1
  %cmd.addr.i.i653 = alloca i8, align 1
  %result.i.i654 = alloca i8, align 1
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #3
  %0 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 3, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #3
  %1 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %result.i.i, align 1, !annotation !126
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.rf69_read_reg.exit_crit_edge, label %cond.false.i.i

entry.rf69_read_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit

cond.false.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %result.i.i, align 1
  %conv.i.i = zext i8 %3 to i32
  br label %rf69_read_reg.exit

rf69_read_reg.exit:                               ; preds = %cond.false.i.i, %entry.rf69_read_reg.exit_crit_edge
  %cond.i.i = phi i32 [ %conv.i.i, %cond.false.i.i ], [ %call.i.i, %entry.rf69_read_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i653) #3
  %4 = ptrtoint ptr %cmd.addr.i.i653 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %cmd.addr.i.i653, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i654) #3
  %5 = ptrtoint ptr %result.i.i654 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %result.i.i654, align 1, !annotation !126
  %call.i.i655 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i653, i32 noundef 1, ptr noundef nonnull %result.i.i654, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i655)
  %cmp.i.i656 = icmp slt i32 %call.i.i655, 0
  br i1 %cmp.i.i656, label %rf69_read_reg.exit.rf69_read_reg.exit661_crit_edge, label %cond.false.i.i658

rf69_read_reg.exit.rf69_read_reg.exit661_crit_edge: ; preds = %rf69_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit661

cond.false.i.i658:                                ; preds = %rf69_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %result.i.i654 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %result.i.i654, align 1
  %conv.i.i657 = zext i8 %7 to i32
  br label %rf69_read_reg.exit661

rf69_read_reg.exit661:                            ; preds = %cond.false.i.i658, %rf69_read_reg.exit.rf69_read_reg.exit661_crit_edge
  %cond.i.i659 = phi i32 [ %conv.i.i657, %cond.false.i.i658 ], [ %call.i.i655, %rf69_read_reg.exit.rf69_read_reg.exit661_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i654) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i653) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %deviation)
  %cmp = icmp ult i32 %deviation, 600
  br i1 %cmp, label %rf69_read_reg.exit661.do.body_crit_edge, label %lor.lhs.false

rf69_read_reg.exit661.do.body_crit_edge:          ; preds = %rf69_read_reg.exit661
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

lor.lhs.false:                                    ; preds = %rf69_read_reg.exit661
  %conv = shl i32 %cond.i.i, 8
  %shl = and i32 %conv, 65280
  %conv3 = and i32 %cond.i.i659, 255
  %or = or i32 %conv3, %shl
  %div = udiv i32 32000000, %or
  %div5647 = lshr i32 %div, 1
  %add = add i32 %div5647, %deviation
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %add)
  %cmp6 = icmp ugt i32 %add, 500000
  br i1 %cmp6, label %lor.lhs.false.do.body_crit_edge, label %is_power_of_2.exit

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %rf69_read_reg.exit661.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_deviation.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_deviation, %if.then11)) #3
          to label %cleanup [label %if.then11], !srcloc !125

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_deviation.__UNIQUE_ID_ddebug236, ptr noundef %spi, ptr noundef nonnull @.str.13, i32 noundef %deviation) #3
  br label %cleanup

is_power_of_2.exit:                               ; preds = %lor.lhs.false
  %conv209 = zext i32 %deviation to i64
  %mul210 = mul nuw nsw i64 %conv209, 1000000
  %8 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8305539230345341366, i64 %mul210, i32 0) #6, !srcloc !127
  %asmresult.i663 = extractvalue { i64, i32 } %8, 0
  %asmresult4.i664 = extractvalue { i64, i32 } %8, 1
  %9 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8305539230345341366, i64 %mul210, i64 %asmresult.i663, i32 %asmresult4.i664) #6, !srcloc !128
  %asmresult10.i665 = extractvalue { i64, i32 } %9, 0
  %phi.bo711 = lshr i64 %asmresult10.i665, 25
  %conv437 = trunc i64 %phi.bo711 to i8
  %10 = and i64 %asmresult10.i665, 1649267441664
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool440.not = icmp eq i64 %10, 0
  br i1 %tobool440.not, label %if.end459, label %do.body442

do.body442:                                       ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_deviation.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_deviation, %if.then454)) #3
          to label %cleanup [label %if.then454], !srcloc !125

if.then454:                                       ; preds = %do.body442
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_deviation.__UNIQUE_ID_ddebug237, ptr noundef %spi, ptr noundef nonnull @.str.14) #3
  br label %cleanup

if.end459:                                        ; preds = %is_power_of_2.exit
  %and433 = lshr i64 %asmresult10.i665, 33
  %conv435 = trunc i64 %and433 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #3
  %11 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %12 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -123, ptr %buffer.i, align 1
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv435, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #3
  %14 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 92)
  %16 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  %18 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end459.rf69_write_reg.exit_crit_edge

if.end459.rf69_write_reg.exit_crit_edge:          ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %rf69_write_reg.exit

rf69_write_reg.exit:                              ; preds = %if.end.i.i.i.i.i.i.i, %if.end459.rf69_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool461.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool461.not, label %if.end463, label %rf69_write_reg.exit.cleanup_crit_edge

rf69_write_reg.exit.cleanup_crit_edge:            ; preds = %rf69_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end463:                                        ; preds = %rf69_write_reg.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i668) #3
  %28 = getelementptr inbounds [2 x i8], ptr %buffer.i668, i32 0, i32 1
  %29 = ptrtoint ptr %buffer.i668 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -122, ptr %buffer.i668, align 1
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv437, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i667) #3
  %31 = getelementptr inbounds i8, ptr %t.i.i667, i32 4
  %32 = call ptr @memset(ptr %31, i32 0, i32 92)
  %33 = ptrtoint ptr %t.i.i667 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buffer.i668, ptr %t.i.i667, align 4
  %len1.i.i669 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i667, i32 0, i32 2
  %34 = ptrtoint ptr %len1.i.i669 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %len1.i.i669, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i666) #3
  %35 = getelementptr inbounds i8, ptr %msg.i.i.i666, i32 8
  %36 = call ptr @memset(ptr %35, i32 0, i32 40)
  %37 = ptrtoint ptr %msg.i.i.i666 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %msg.i.i.i666, ptr %msg.i.i.i666, align 4
  %prev.i.i.i.i.i.i.i670 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i666, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i.i.i.i.i670 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i.i.i666, ptr %prev.i.i.i.i.i.i.i670, align 4
  %resources.i.i.i.i.i.i671 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i666, i32 0, i32 10
  %39 = ptrtoint ptr %resources.i.i.i.i.i.i671 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %resources.i.i.i.i.i.i671, ptr %resources.i.i.i.i.i.i671, align 4
  %prev.i2.i.i.i.i.i.i672 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i666, i32 0, i32 10, i32 1
  %40 = ptrtoint ptr %prev.i2.i.i.i.i.i.i672 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %resources.i.i.i.i.i.i671, ptr %prev.i2.i.i.i.i.i.i672, align 4
  %transfer_list.i.i.i.i.i673 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i667, i32 0, i32 18
  %call.i.i.i.i.i.i.i674 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i673, ptr noundef nonnull %msg.i.i.i666, ptr noundef nonnull %msg.i.i.i666) #3
  br i1 %call.i.i.i.i.i.i.i674, label %if.end.i.i.i.i.i.i.i676, label %if.end463.rf69_write_reg.exit678_crit_edge

if.end463.rf69_write_reg.exit678_crit_edge:       ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit678

if.end.i.i.i.i.i.i.i676:                          ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #5
  %41 = ptrtoint ptr %prev.i.i.i.i.i.i.i670 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %transfer_list.i.i.i.i.i673, ptr %prev.i.i.i.i.i.i.i670, align 4
  %42 = ptrtoint ptr %transfer_list.i.i.i.i.i673 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i.i.i666, ptr %transfer_list.i.i.i.i.i673, align 4
  %prev3.i.i.i.i.i.i.i675 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i667, i32 0, i32 18, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i.i.i.i.i675 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i.i.i666, ptr %prev3.i.i.i.i.i.i.i675, align 4
  %44 = ptrtoint ptr %msg.i.i.i666 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %transfer_list.i.i.i.i.i673, ptr %msg.i.i.i666, align 4
  br label %rf69_write_reg.exit678

rf69_write_reg.exit678:                           ; preds = %if.end.i.i.i.i.i.i.i676, %if.end463.rf69_write_reg.exit678_crit_edge
  %call.i.i.i677 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i666) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i666) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i667) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i668) #3
  br label %cleanup

cleanup:                                          ; preds = %rf69_write_reg.exit678, %rf69_write_reg.exit.cleanup_crit_edge, %if.then454, %do.body442, %if.then11, %do.body
  %retval.0 = phi i32 [ -22, %if.then11 ], [ -22, %if.then454 ], [ %call.i.i.i, %rf69_write_reg.exit.cleanup_crit_edge ], [ %call.i.i.i677, %rf69_write_reg.exit678 ], [ -22, %do.body ], [ -22, %do.body442 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_frequency(ptr noundef %spi, i32 noundef %frequency) local_unnamed_addr #0 align 64 {
if.end180:
  %msg.i.i.i639 = alloca %struct.spi_message, align 4
  %t.i.i640 = alloca %struct.spi_transfer, align 4
  %buffer.i641 = alloca [2 x i8], align 1
  %msg.i.i.i626 = alloca %struct.spi_message, align 4
  %t.i.i627 = alloca %struct.spi_transfer, align 4
  %buffer.i628 = alloca [2 x i8], align 1
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 511999997902848) #6, !srcloc !129
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 511999997902848, i64 %0, i32 0) #6, !srcloc !128
  %asmresult10.i.i.i = extractvalue { i64, i32 } %1, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 18
  %conv185 = trunc i64 %div1581.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv185, i32 %frequency)
  %cmp186 = icmp ult i32 %conv185, %frequency
  br i1 %cmp186, label %do.body, label %if.end200

do.body:                                          ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_frequency.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_frequency, %if.then198)) #3
          to label %cleanup [label %if.then198], !srcloc !125

if.then198:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_frequency.__UNIQUE_ID_ddebug238, ptr noundef %spi, ptr noundef nonnull @.str.16) #3
  br label %cleanup

if.end200:                                        ; preds = %if.end180
  %conv201 = zext i32 %frequency to i64
  %mul202 = mul nuw nsw i64 %conv201, 1000000
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8305539230345341366, i64 %mul202, i32 0) #6, !srcloc !127
  %asmresult.i623 = extractvalue { i64, i32 } %2, 0
  %asmresult4.i624 = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8305539230345341366, i64 %mul202, i64 %asmresult.i623, i32 %asmresult4.i624) #6, !srcloc !128
  %asmresult10.i625 = extractvalue { i64, i32 } %3, 0
  %div399678 = lshr i64 %asmresult10.i625, 25
  %extract.t = trunc i64 %div399678 to i8
  %extract = lshr i64 %asmresult10.i625, 33
  %extract.t675 = trunc i64 %extract to i8
  %extract676 = lshr i64 %asmresult10.i625, 41
  %extract.t677 = trunc i64 %extract676 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #3
  %4 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %5 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -121, ptr %buffer.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %extract.t677, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #3
  %7 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 92)
  %9 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  %11 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end200.rf69_write_reg.exit_crit_edge

if.end200.rf69_write_reg.exit_crit_edge:          ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %rf69_write_reg.exit

rf69_write_reg.exit:                              ; preds = %if.end.i.i.i.i.i.i.i, %if.end200.rf69_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool434.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool434.not, label %if.end436, label %rf69_write_reg.exit.cleanup_crit_edge

rf69_write_reg.exit.cleanup_crit_edge:            ; preds = %rf69_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end436:                                        ; preds = %rf69_write_reg.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i628) #3
  %21 = getelementptr inbounds [2 x i8], ptr %buffer.i628, i32 0, i32 1
  %22 = ptrtoint ptr %buffer.i628 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -120, ptr %buffer.i628, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %extract.t675, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i627) #3
  %24 = getelementptr inbounds i8, ptr %t.i.i627, i32 4
  %25 = call ptr @memset(ptr %24, i32 0, i32 92)
  %26 = ptrtoint ptr %t.i.i627 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buffer.i628, ptr %t.i.i627, align 4
  %len1.i.i629 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i627, i32 0, i32 2
  %27 = ptrtoint ptr %len1.i.i629 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %len1.i.i629, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i626) #3
  %28 = getelementptr inbounds i8, ptr %msg.i.i.i626, i32 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 40)
  %30 = ptrtoint ptr %msg.i.i.i626 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %msg.i.i.i626, ptr %msg.i.i.i626, align 4
  %prev.i.i.i.i.i.i.i630 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i626, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i.i.i.i.i630 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i.i626, ptr %prev.i.i.i.i.i.i.i630, align 4
  %resources.i.i.i.i.i.i631 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i626, i32 0, i32 10
  %32 = ptrtoint ptr %resources.i.i.i.i.i.i631 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %resources.i.i.i.i.i.i631, ptr %resources.i.i.i.i.i.i631, align 4
  %prev.i2.i.i.i.i.i.i632 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i626, i32 0, i32 10, i32 1
  %33 = ptrtoint ptr %prev.i2.i.i.i.i.i.i632 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %resources.i.i.i.i.i.i631, ptr %prev.i2.i.i.i.i.i.i632, align 4
  %transfer_list.i.i.i.i.i633 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i627, i32 0, i32 18
  %call.i.i.i.i.i.i.i634 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i633, ptr noundef nonnull %msg.i.i.i626, ptr noundef nonnull %msg.i.i.i626) #3
  br i1 %call.i.i.i.i.i.i.i634, label %if.end.i.i.i.i.i.i.i636, label %if.end436.rf69_write_reg.exit638_crit_edge

if.end436.rf69_write_reg.exit638_crit_edge:       ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit638

if.end.i.i.i.i.i.i.i636:                          ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %prev.i.i.i.i.i.i.i630 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %transfer_list.i.i.i.i.i633, ptr %prev.i.i.i.i.i.i.i630, align 4
  %35 = ptrtoint ptr %transfer_list.i.i.i.i.i633 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i.i626, ptr %transfer_list.i.i.i.i.i633, align 4
  %prev3.i.i.i.i.i.i.i635 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i627, i32 0, i32 18, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i.i.i.i.i635 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i.i626, ptr %prev3.i.i.i.i.i.i.i635, align 4
  %37 = ptrtoint ptr %msg.i.i.i626 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %transfer_list.i.i.i.i.i633, ptr %msg.i.i.i626, align 4
  br label %rf69_write_reg.exit638

rf69_write_reg.exit638:                           ; preds = %if.end.i.i.i.i.i.i.i636, %if.end436.rf69_write_reg.exit638_crit_edge
  %call.i.i.i637 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i626) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i626) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i627) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i628) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i637)
  %tobool438.not = icmp eq i32 %call.i.i.i637, 0
  br i1 %tobool438.not, label %if.end440, label %rf69_write_reg.exit638.cleanup_crit_edge

rf69_write_reg.exit638.cleanup_crit_edge:         ; preds = %rf69_write_reg.exit638
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end440:                                        ; preds = %rf69_write_reg.exit638
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i641) #3
  %38 = getelementptr inbounds [2 x i8], ptr %buffer.i641, i32 0, i32 1
  %39 = ptrtoint ptr %buffer.i641 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -119, ptr %buffer.i641, align 1
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %extract.t, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i640) #3
  %41 = getelementptr inbounds i8, ptr %t.i.i640, i32 4
  %42 = call ptr @memset(ptr %41, i32 0, i32 92)
  %43 = ptrtoint ptr %t.i.i640 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %buffer.i641, ptr %t.i.i640, align 4
  %len1.i.i642 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i640, i32 0, i32 2
  %44 = ptrtoint ptr %len1.i.i642 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %len1.i.i642, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i639) #3
  %45 = getelementptr inbounds i8, ptr %msg.i.i.i639, i32 8
  %46 = call ptr @memset(ptr %45, i32 0, i32 40)
  %47 = ptrtoint ptr %msg.i.i.i639 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %msg.i.i.i639, ptr %msg.i.i.i639, align 4
  %prev.i.i.i.i.i.i.i643 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i639, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i.i.i.i.i643 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %msg.i.i.i639, ptr %prev.i.i.i.i.i.i.i643, align 4
  %resources.i.i.i.i.i.i644 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i639, i32 0, i32 10
  %49 = ptrtoint ptr %resources.i.i.i.i.i.i644 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %resources.i.i.i.i.i.i644, ptr %resources.i.i.i.i.i.i644, align 4
  %prev.i2.i.i.i.i.i.i645 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i639, i32 0, i32 10, i32 1
  %50 = ptrtoint ptr %prev.i2.i.i.i.i.i.i645 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %resources.i.i.i.i.i.i644, ptr %prev.i2.i.i.i.i.i.i645, align 4
  %transfer_list.i.i.i.i.i646 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i640, i32 0, i32 18
  %call.i.i.i.i.i.i.i647 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i646, ptr noundef nonnull %msg.i.i.i639, ptr noundef nonnull %msg.i.i.i639) #3
  br i1 %call.i.i.i.i.i.i.i647, label %if.end.i.i.i.i.i.i.i649, label %if.end440.rf69_write_reg.exit651_crit_edge

if.end440.rf69_write_reg.exit651_crit_edge:       ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit651

if.end.i.i.i.i.i.i.i649:                          ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #5
  %51 = ptrtoint ptr %prev.i.i.i.i.i.i.i643 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %transfer_list.i.i.i.i.i646, ptr %prev.i.i.i.i.i.i.i643, align 4
  %52 = ptrtoint ptr %transfer_list.i.i.i.i.i646 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %msg.i.i.i639, ptr %transfer_list.i.i.i.i.i646, align 4
  %prev3.i.i.i.i.i.i.i648 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i640, i32 0, i32 18, i32 1
  %53 = ptrtoint ptr %prev3.i.i.i.i.i.i.i648 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %msg.i.i.i639, ptr %prev3.i.i.i.i.i.i.i648, align 4
  %54 = ptrtoint ptr %msg.i.i.i639 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %transfer_list.i.i.i.i.i646, ptr %msg.i.i.i639, align 4
  br label %rf69_write_reg.exit651

rf69_write_reg.exit651:                           ; preds = %if.end.i.i.i.i.i.i.i649, %if.end440.rf69_write_reg.exit651_crit_edge
  %call.i.i.i650 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i639) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i639) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i640) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i641) #3
  br label %cleanup

cleanup:                                          ; preds = %rf69_write_reg.exit651, %rf69_write_reg.exit638.cleanup_crit_edge, %rf69_write_reg.exit.cleanup_crit_edge, %if.then198, %do.body
  %retval.0 = phi i32 [ -22, %if.then198 ], [ %call.i.i.i, %rf69_write_reg.exit.cleanup_crit_edge ], [ %call.i.i.i637, %rf69_write_reg.exit638.cleanup_crit_edge ], [ %call.i.i.i650, %rf69_write_reg.exit651 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_enable_amplifier(ptr noundef %spi, i8 noundef zeroext %amplifier_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rf69_set_bit(ptr noundef %spi, i8 noundef zeroext 17, i8 noundef zeroext %amplifier_mask)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rf69_set_bit(ptr noundef %spi, i8 noundef zeroext %reg, i8 noundef zeroext %mask) unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i = alloca [2 x i8], align 1
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #3
  %0 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #3
  %1 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %result.i.i, align 1, !annotation !126
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.rf69_read_reg.exit_crit_edge, label %cond.false.i.i

entry.rf69_read_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit

cond.false.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %result.i.i, align 1
  %conv.i.i = zext i8 %3 to i32
  br label %rf69_read_reg.exit

rf69_read_reg.exit:                               ; preds = %cond.false.i.i, %entry.rf69_read_reg.exit_crit_edge
  %cond.i.i = phi i32 [ %conv.i.i, %cond.false.i.i ], [ %call.i.i, %entry.rf69_read_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #3
  %conv.i = trunc i32 %cond.i.i to i8
  %or7 = or i8 %conv.i, %mask
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #3
  %4 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %5 = or i8 %reg, -128
  %6 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %buffer.i, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %or7, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #3
  %8 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 92)
  %10 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  %12 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %rf69_read_reg.exit.rf69_write_reg.exit_crit_edge

rf69_read_reg.exit.rf69_write_reg.exit_crit_edge: ; preds = %rf69_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %rf69_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %rf69_write_reg.exit

rf69_write_reg.exit:                              ; preds = %if.end.i.i.i.i.i.i.i, %rf69_read_reg.exit.rf69_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #3
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_disable_amplifier(ptr noundef %spi, i8 noundef zeroext %amplifier_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rf69_clear_bit(ptr noundef %spi, i8 noundef zeroext 17, i8 noundef zeroext %amplifier_mask)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rf69_clear_bit(ptr noundef %spi, i8 noundef zeroext %reg, i8 noundef zeroext %mask) unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i = alloca [2 x i8], align 1
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #3
  %0 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #3
  %1 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %result.i.i, align 1, !annotation !126
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.rf69_read_reg.exit_crit_edge, label %cond.false.i.i

entry.rf69_read_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit

cond.false.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %result.i.i, align 1
  %conv.i.i = zext i8 %3 to i32
  br label %rf69_read_reg.exit

rf69_read_reg.exit:                               ; preds = %cond.false.i.i, %entry.rf69_read_reg.exit_crit_edge
  %cond.i.i = phi i32 [ %conv.i.i, %cond.false.i.i ], [ %call.i.i, %entry.rf69_read_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #3
  %conv.i = trunc i32 %cond.i.i to i8
  %neg = xor i8 %mask, -1
  %and = and i8 %conv.i, %neg
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #3
  %4 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %5 = or i8 %reg, -128
  %6 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %buffer.i, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %and, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #3
  %8 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 92)
  %10 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  %12 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %rf69_read_reg.exit.rf69_write_reg.exit_crit_edge

rf69_read_reg.exit.rf69_write_reg.exit_crit_edge: ; preds = %rf69_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %rf69_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %rf69_write_reg.exit

rf69_write_reg.exit:                              ; preds = %if.end.i.i.i.i.i.i.i, %rf69_read_reg.exit.rf69_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #3
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_output_power_level(ptr noundef %spi, i8 noundef zeroext %power_level) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i.i = alloca [2 x i8], align 1
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  %cmd.addr.i.i135 = alloca i8, align 1
  %result.i.i136 = alloca i8, align 1
  %cmd.addr.i.i126 = alloca i8, align 1
  %result.i.i127 = alloca i8, align 1
  %cmd.addr.i.i117 = alloca i8, align 1
  %result.i.i118 = alloca i8, align 1
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #3
  %0 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 17, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #3
  %1 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %result.i.i, align 1, !annotation !126
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.rf69_read_reg.exit_crit_edge, label %cond.false.i.i

entry.rf69_read_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit

cond.false.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %result.i.i, align 1
  %conv.i.i = zext i8 %3 to i32
  br label %rf69_read_reg.exit

rf69_read_reg.exit:                               ; preds = %cond.false.i.i, %entry.rf69_read_reg.exit_crit_edge
  %cond.i.i = phi i32 [ %conv.i.i, %cond.false.i.i ], [ %call.i.i, %entry.rf69_read_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #3
  %and = and i32 %cond.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %cond.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %and6 = and i32 %cond.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i117) #3
  %4 = ptrtoint ptr %cmd.addr.i.i117 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 19, ptr %cmd.addr.i.i117, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i118) #3
  %5 = ptrtoint ptr %result.i.i118 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %result.i.i118, align 1, !annotation !126
  %call.i.i119 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i117, i32 noundef 1, ptr noundef nonnull %result.i.i118, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i119)
  %cmp.i.i120 = icmp slt i32 %call.i.i119, 0
  br i1 %cmp.i.i120, label %rf69_read_reg.exit.rf69_read_reg.exit125_crit_edge, label %cond.false.i.i122

rf69_read_reg.exit.rf69_read_reg.exit125_crit_edge: ; preds = %rf69_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit125

cond.false.i.i122:                                ; preds = %rf69_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %result.i.i118 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %result.i.i118, align 1
  %conv.i.i121 = zext i8 %7 to i32
  br label %rf69_read_reg.exit125

rf69_read_reg.exit125:                            ; preds = %cond.false.i.i122, %rf69_read_reg.exit.rf69_read_reg.exit125_crit_edge
  %cond.i.i123 = phi i32 [ %conv.i.i121, %cond.false.i.i122 ], [ %call.i.i119, %rf69_read_reg.exit.rf69_read_reg.exit125_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i118) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i117) #3
  %conv.i124 = trunc i32 %cond.i.i123 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i126) #3
  %8 = ptrtoint ptr %cmd.addr.i.i126 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 90, ptr %cmd.addr.i.i126, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i127) #3
  %9 = ptrtoint ptr %result.i.i127 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %result.i.i127, align 1, !annotation !126
  %call.i.i128 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i126, i32 noundef 1, ptr noundef nonnull %result.i.i127, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i128)
  %cmp.i.i129 = icmp slt i32 %call.i.i128, 0
  br i1 %cmp.i.i129, label %rf69_read_reg.exit125.rf69_read_reg.exit134_crit_edge, label %cond.false.i.i131

rf69_read_reg.exit125.rf69_read_reg.exit134_crit_edge: ; preds = %rf69_read_reg.exit125
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit134

cond.false.i.i131:                                ; preds = %rf69_read_reg.exit125
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %result.i.i127 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %result.i.i127, align 1
  %conv.i.i130 = zext i8 %11 to i32
  br label %rf69_read_reg.exit134

rf69_read_reg.exit134:                            ; preds = %cond.false.i.i131, %rf69_read_reg.exit125.rf69_read_reg.exit134_crit_edge
  %cond.i.i132 = phi i32 [ %conv.i.i130, %cond.false.i.i131 ], [ %call.i.i128, %rf69_read_reg.exit125.rf69_read_reg.exit134_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i127) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i126) #3
  %conv.i133 = trunc i32 %cond.i.i132 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i135) #3
  %12 = ptrtoint ptr %cmd.addr.i.i135 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 92, ptr %cmd.addr.i.i135, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i136) #3
  %13 = ptrtoint ptr %result.i.i136 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %result.i.i136, align 1, !annotation !126
  %call.i.i137 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i135, i32 noundef 1, ptr noundef nonnull %result.i.i136, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i137)
  %cmp.i.i138 = icmp slt i32 %call.i.i137, 0
  br i1 %cmp.i.i138, label %rf69_read_reg.exit134.rf69_read_reg.exit143_crit_edge, label %cond.false.i.i140

rf69_read_reg.exit134.rf69_read_reg.exit143_crit_edge: ; preds = %rf69_read_reg.exit134
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit143

cond.false.i.i140:                                ; preds = %rf69_read_reg.exit134
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %result.i.i136 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %result.i.i136, align 1
  %conv.i.i139 = zext i8 %15 to i32
  br label %rf69_read_reg.exit143

rf69_read_reg.exit143:                            ; preds = %cond.false.i.i140, %rf69_read_reg.exit134.rf69_read_reg.exit143_crit_edge
  %cond.i.i141 = phi i32 [ %conv.i.i139, %cond.false.i.i140 ], [ %call.i.i137, %rf69_read_reg.exit134.rf69_read_reg.exit143_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i136) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i135) #3
  %conv.i142 = trunc i32 %cond.i.i141 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %conv.i124)
  %cmp = icmp eq i8 %conv.i124, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 93, i8 %conv.i133)
  %cmp15 = icmp eq i8 %conv.i133, 93
  %or.cond = select i1 %cmp, i1 %cmp15, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 124, i8 %conv.i142)
  %cmp18 = icmp eq i8 %conv.i142, 124
  %spec.select = select i1 %or.cond, i1 %cmp18, i1 false
  %tobool3.not.not = xor i1 %tobool3.not, true
  %brmerge = select i1 %tobool.not, i1 true, i1 %tobool3.not.not
  %tobool7.not.not = xor i1 %tobool7.not, true
  %brmerge109 = select i1 %brmerge, i1 true, i1 %tobool7.not.not
  br i1 %brmerge109, label %if.else, label %if.then

if.then:                                          ; preds = %rf69_read_reg.exit143
  call void @__sanitizer_cov_trace_pc() #5
  %add = add i8 %power_level, 18
  br label %if.end60

if.else:                                          ; preds = %rf69_read_reg.exit143
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge110 = select i1 %tobool.not.not, i1 true, i1 %tobool3.not
  %brmerge112 = select i1 %brmerge110, i1 true, i1 %tobool7.not.not
  br i1 %brmerge112, label %if.else39, label %if.then35

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %add37 = add i8 %power_level, 18
  br label %if.end60

if.else39:                                        ; preds = %if.else
  %brmerge115 = select i1 %brmerge110, i1 true, i1 %tobool7.not
  br i1 %brmerge115, label %if.else39.do.body_crit_edge, label %if.then47

if.else39.do.body_crit_edge:                      ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.then47:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #5
  %power_level.addr.0.v = select i1 %spec.select, i8 11, i8 14
  %power_level.addr.0 = add i8 %power_level.addr.0.v, %power_level
  br label %if.end60

if.end60:                                         ; preds = %if.then47, %if.then35, %if.then
  %min_power_level.0 = phi i32 [ 16, %if.then47 ], [ 16, %if.then35 ], [ 0, %if.then ]
  %power_level.addr.1 = phi i8 [ %power_level.addr.0, %if.then47 ], [ %add37, %if.then35 ], [ %add, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %power_level.addr.1)
  %cmp62 = icmp ugt i8 %power_level.addr.1, 31
  %conv61 = zext i8 %power_level.addr.1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %min_power_level.0, i32 %conv61)
  %cmp68 = icmp ugt i32 %min_power_level.0, %conv61
  %or.cond116 = or i1 %cmp62, %cmp68
  br i1 %or.cond116, label %if.end60.do.body_crit_edge, label %if.end71

if.end60.do.body_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.end71:                                         ; preds = %if.end60
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %16 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 17, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #3
  %17 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !126
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end71.rf69_read_reg.exit.i_crit_edge, label %cond.false.i.i.i

if.end71.rf69_read_reg.exit.i_crit_edge:          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit.i

cond.false.i.i.i:                                 ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %result.i.i.i, align 1
  %conv.i.i.i = zext i8 %19 to i32
  br label %rf69_read_reg.exit.i

rf69_read_reg.exit.i:                             ; preds = %cond.false.i.i.i, %if.end71.rf69_read_reg.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv.i.i.i, %cond.false.i.i.i ], [ %call.i.i.i, %if.end71.rf69_read_reg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %conv.i.i144 = trunc i32 %cond.i.i.i to i8
  %and.i = and i8 %conv.i.i144, -32
  %or.i = or i8 %and.i, %power_level.addr.1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i) #3
  %20 = getelementptr inbounds [2 x i8], ptr %buffer.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -111, ptr %buffer.i.i, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or.i, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #3
  %23 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %24 = call ptr @memset(ptr %23, i32 0, i32 92)
  %25 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buffer.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  %27 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %28 = call ptr @memset(ptr %27, i32 0, i32 40)
  %29 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %31 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge

rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge: ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_mod_write.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %33 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %rf69_read_mod_write.exit

rf69_read_mod_write.exit:                         ; preds = %if.end.i.i.i.i.i.i.i.i, %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i) #3
  br label %cleanup

do.body:                                          ; preds = %if.end60.do.body_crit_edge, %if.else39.do.body_crit_edge
  %power_level.addr.2 = phi i8 [ %power_level, %if.else39.do.body_crit_edge ], [ %power_level.addr.1, %if.end60.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_output_power_level.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_output_power_level, %if.then78)) #3
          to label %cleanup [label %if.then78], !srcloc !125

if.then78:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %conv79 = zext i8 %power_level.addr.2 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_output_power_level.__UNIQUE_ID_ddebug239, ptr noundef %spi, ptr noundef nonnull @.str.18, i32 noundef %conv79) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %do.body, %rf69_read_mod_write.exit
  %retval.0 = phi i32 [ %call.i.i.i.i, %rf69_read_mod_write.exit ], [ -22, %if.then78 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_pa_ramp(ptr noundef %spi, i32 noundef %pa_ramp) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %pa_ramp)
  %cmp = icmp ugt i32 %pa_ramp, 15
  br i1 %cmp, label %do.body, label %if.end10, !prof !124

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_pa_ramp.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_pa_ramp, %if.then9)) #3
          to label %return [label %if.then9], !srcloc !125

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_pa_ramp.__UNIQUE_ID_ddebug240, ptr noundef %spi, ptr noundef nonnull @.str.20, i32 noundef %pa_ramp) #3
  br label %return

if.end10:                                         ; preds = %entry
  %arrayidx = getelementptr [16 x i8], ptr @rf69_set_pa_ramp.pa_ramp_map, i32 0, i32 %pa_ramp
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #3
  %2 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %3 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -110, ptr %buffer.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %1, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #3
  %5 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  %9 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end10.rf69_write_reg.exit_crit_edge

if.end10.rf69_write_reg.exit_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %rf69_write_reg.exit

rf69_write_reg.exit:                              ; preds = %if.end.i.i.i.i.i.i.i, %if.end10.rf69_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #3
  br label %return

return:                                           ; preds = %rf69_write_reg.exit, %if.then9, %do.body
  %retval.0 = phi i32 [ %call.i.i.i, %rf69_write_reg.exit ], [ -22, %if.then9 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_antenna_impedance(ptr noundef %spi, i32 noundef %antenna_impedance) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %antenna_impedance to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %antenna_impedance, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call fastcc i32 @rf69_clear_bit(ptr noundef %spi, i8 noundef zeroext 24, i8 noundef zeroext -128)
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call fastcc i32 @rf69_set_bit(ptr noundef %spi, i8 noundef zeroext 24, i8 noundef zeroext -128)
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_antenna_impedance.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_antenna_impedance, %if.then)) #3
          to label %return [label %if.then], !srcloc !125

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_antenna_impedance.__UNIQUE_ID_ddebug241, ptr noundef %spi, ptr noundef nonnull @.str.22, i32 noundef %antenna_impedance) #3
  br label %return

return:                                           ; preds = %if.then, %do.body, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %if.then ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_lna_gain(ptr noundef %spi, i32 noundef %lna_gain) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i.i = alloca [2 x i8], align 1
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %lna_gain)
  %cmp = icmp ugt i32 %lna_gain, 6
  br i1 %cmp, label %do.body, label %if.end10, !prof !124

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_lna_gain.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_lna_gain, %if.then9)) #3
          to label %return [label %if.then9], !srcloc !125

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_lna_gain.__UNIQUE_ID_ddebug242, ptr noundef %spi, ptr noundef nonnull @.str.24, i32 noundef %lna_gain) #3
  br label %return

if.end10:                                         ; preds = %entry
  %arrayidx = getelementptr [7 x i8], ptr @rf69_set_lna_gain.lna_gain_map, i32 0, i32 %lna_gain
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %2 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 24, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #3
  %3 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !126
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end10.rf69_read_reg.exit.i_crit_edge, label %cond.false.i.i.i

if.end10.rf69_read_reg.exit.i_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit.i

cond.false.i.i.i:                                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %result.i.i.i, align 1
  %conv.i.i.i = zext i8 %5 to i32
  br label %rf69_read_reg.exit.i

rf69_read_reg.exit.i:                             ; preds = %cond.false.i.i.i, %if.end10.rf69_read_reg.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv.i.i.i, %cond.false.i.i.i ], [ %call.i.i.i, %if.end10.rf69_read_reg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %conv.i.i = trunc i32 %cond.i.i.i to i8
  %and.i = and i8 %conv.i.i, -8
  %or.i = or i8 %and.i, %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i) #3
  %6 = getelementptr inbounds [2 x i8], ptr %buffer.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -104, ptr %buffer.i.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or.i, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #3
  %9 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buffer.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  %13 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge

rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge: ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_mod_write.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %rf69_read_mod_write.exit

rf69_read_mod_write.exit:                         ; preds = %if.end.i.i.i.i.i.i.i.i, %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i) #3
  br label %return

return:                                           ; preds = %rf69_read_mod_write.exit, %if.then9, %do.body
  %retval.0 = phi i32 [ %call.i.i.i.i, %rf69_read_mod_write.exit ], [ -22, %if.then9 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_bandwidth(ptr noundef %spi, i32 noundef %mantisse, i8 noundef zeroext %exponent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rf69_set_bandwidth_intern(ptr noundef %spi, i8 noundef zeroext 25, i32 noundef %mantisse, i8 noundef zeroext %exponent)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rf69_set_bandwidth_intern(ptr noundef %spi, i8 noundef zeroext %reg, i32 noundef %mantisse, i8 noundef zeroext %exponent) unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i = alloca [2 x i8], align 1
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %exponent to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %exponent)
  %cmp = icmp ugt i8 %exponent, 7
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_bandwidth_intern.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_bandwidth_intern, %if.then4)) #3
          to label %cleanup [label %if.then4], !srcloc !125

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_bandwidth_intern.__UNIQUE_ID_ddebug243, ptr noundef %spi, ptr noundef nonnull @.str.47, i32 noundef %conv) #3
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mantisse)
  %switch = icmp ult i32 %mantisse, 3
  br i1 %switch, label %if.end32, label %do.body15

do.body15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_bandwidth_intern.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_bandwidth_intern, %if.then27)) #3
          to label %cleanup [label %if.then27], !srcloc !125

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_bandwidth_intern.__UNIQUE_ID_ddebug244, ptr noundef %spi, ptr noundef nonnull @.str.48, i32 noundef %mantisse) #3
  br label %cleanup

if.end32:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #3
  %0 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #3
  %1 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %result.i.i, align 1, !annotation !126
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end32.rf69_read_reg.exit_crit_edge, label %cond.false.i.i

if.end32.rf69_read_reg.exit_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit

cond.false.i.i:                                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %result.i.i, align 1
  %conv.i.i = zext i8 %3 to i32
  br label %rf69_read_reg.exit

rf69_read_reg.exit:                               ; preds = %cond.false.i.i, %if.end32.rf69_read_reg.exit_crit_edge
  %cond.i.i = phi i32 [ %conv.i.i, %cond.false.i.i ], [ %call.i.i, %if.end32.rf69_read_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #3
  %conv.i = trunc i32 %cond.i.i to i8
  %4 = and i8 %conv.i, -32
  %5 = zext i32 %mantisse to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %mantisse, label %rf69_read_reg.exit.sw.epilog_crit_edge [
    i32 2, label %sw.bb42
    i32 1, label %sw.bb38
  ]

rf69_read_reg.exit.sw.epilog_crit_edge:           ; preds = %rf69_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb38:                                          ; preds = %rf69_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %6 = or i8 %4, 8
  br label %sw.epilog

sw.bb42:                                          ; preds = %rf69_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %7 = or i8 %4, 16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb42, %sw.bb38, %rf69_read_reg.exit.sw.epilog_crit_edge
  %bandwidth.0 = phi i8 [ %7, %sw.bb42 ], [ %6, %sw.bb38 ], [ %4, %rf69_read_reg.exit.sw.epilog_crit_edge ]
  %or4866 = or i8 %bandwidth.0, %exponent
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #3
  %8 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %9 = or i8 %reg, -128
  %10 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %buffer.i, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %or4866, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #3
  %12 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 92)
  %14 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  %16 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %sw.epilog.rf69_write_reg.exit_crit_edge

sw.epilog.rf69_write_reg.exit_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %rf69_write_reg.exit

rf69_write_reg.exit:                              ; preds = %if.end.i.i.i.i.i.i.i, %sw.epilog.rf69_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #3
  br label %cleanup

cleanup:                                          ; preds = %rf69_write_reg.exit, %if.then27, %do.body15, %if.then4, %do.body
  %retval.0 = phi i32 [ %call.i.i.i, %rf69_write_reg.exit ], [ -22, %if.then4 ], [ -22, %if.then27 ], [ -22, %do.body ], [ -22, %do.body15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_bandwidth_during_afc(ptr noundef %spi, i32 noundef %mantisse, i8 noundef zeroext %exponent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rf69_set_bandwidth_intern(ptr noundef %spi, i8 noundef zeroext 26, i32 noundef %mantisse, i8 noundef zeroext %exponent)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_ook_threshold_dec(ptr noundef %spi, i32 noundef %threshold_decrement) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i.i = alloca [2 x i8], align 1
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %threshold_decrement)
  %cmp = icmp ugt i32 %threshold_decrement, 7
  br i1 %cmp, label %do.body, label %if.end10, !prof !124

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_ook_threshold_dec.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_ook_threshold_dec, %if.then9)) #3
          to label %return [label %if.then9], !srcloc !125

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_ook_threshold_dec.__UNIQUE_ID_ddebug245, ptr noundef %spi, ptr noundef nonnull @.str.26, i32 noundef %threshold_decrement) #3
  br label %return

if.end10:                                         ; preds = %entry
  %arrayidx = getelementptr [8 x i8], ptr @rf69_set_ook_threshold_dec.td_map, i32 0, i32 %threshold_decrement
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %2 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 27, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #3
  %3 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !126
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end10.rf69_read_reg.exit.i_crit_edge, label %cond.false.i.i.i

if.end10.rf69_read_reg.exit.i_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit.i

cond.false.i.i.i:                                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %result.i.i.i, align 1
  %conv.i.i.i = zext i8 %5 to i32
  br label %rf69_read_reg.exit.i

rf69_read_reg.exit.i:                             ; preds = %cond.false.i.i.i, %if.end10.rf69_read_reg.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv.i.i.i, %cond.false.i.i.i ], [ %call.i.i.i, %if.end10.rf69_read_reg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %conv.i.i = trunc i32 %cond.i.i.i to i8
  %and.i = and i8 %conv.i.i, -8
  %or.i = or i8 %and.i, %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i) #3
  %6 = getelementptr inbounds [2 x i8], ptr %buffer.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -101, ptr %buffer.i.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or.i, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #3
  %9 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buffer.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  %13 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge

rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge: ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_mod_write.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %rf69_read_mod_write.exit

rf69_read_mod_write.exit:                         ; preds = %if.end.i.i.i.i.i.i.i.i, %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i) #3
  br label %return

return:                                           ; preds = %rf69_read_mod_write.exit, %if.then9, %do.body
  %retval.0 = phi i32 [ %call.i.i.i.i, %rf69_read_mod_write.exit ], [ -22, %if.then9 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_dio_mapping(ptr noundef %spi, i8 noundef zeroext %dio_number, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i = alloca [2 x i8], align 1
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %dio_number to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %dio_number)
  %0 = icmp ult i8 %dio_number, 6
  br i1 %0, label %switch.lookup, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_dio_mapping.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_dio_mapping, %if.then)) #3
          to label %cleanup [label %if.then], !srcloc !125

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_dio_mapping.__UNIQUE_ID_ddebug246, ptr noundef %spi, ptr noundef nonnull @.str.28, i32 noundef %conv) #3
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %1 = sext i8 %dio_number to i32
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.rf69_set_dio_mapping, i32 0, i32 %1
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %2)
  %switch.load = load i8, ptr %switch.gep, align 1
  %3 = sext i8 %dio_number to i32
  %switch.gep28 = getelementptr inbounds [6 x i8], ptr @switch.table.rf69_set_dio_mapping.49, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep28 to i32
  call void @__asan_load1_noabort(i32 %4)
  %switch.load29 = load i8, ptr %switch.gep28, align 1
  %5 = sext i8 %dio_number to i32
  %switch.gep30 = getelementptr inbounds [6 x i8], ptr @switch.table.rf69_set_dio_mapping.50, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep30 to i32
  call void @__asan_load1_noabort(i32 %6)
  %switch.load31 = load i8, ptr %switch.gep30, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #3
  %7 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %switch.load29, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #3
  %8 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %result.i.i, align 1, !annotation !126
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %switch.lookup.rf69_read_reg.exit_crit_edge, label %cond.false.i.i

switch.lookup.rf69_read_reg.exit_crit_edge:       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit

cond.false.i.i:                                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %result.i.i, align 1
  %conv.i.i = zext i8 %10 to i32
  br label %rf69_read_reg.exit

rf69_read_reg.exit:                               ; preds = %cond.false.i.i, %switch.lookup.rf69_read_reg.exit_crit_edge
  %cond.i.i = phi i32 [ %conv.i.i, %cond.false.i.i ], [ %call.i.i, %switch.lookup.rf69_read_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #3
  %conv.i = trunc i32 %cond.i.i to i8
  %and = and i8 %switch.load31, %conv.i
  %shl = shl i8 %value, %switch.load
  %or = or i8 %and, %shl
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #3
  %11 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %12 = or i8 %switch.load29, -128
  %13 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %buffer.i, align 1
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #3
  %15 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 92)
  %17 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  %19 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %rf69_read_reg.exit.rf69_write_reg.exit_crit_edge

rf69_read_reg.exit.rf69_write_reg.exit_crit_edge: ; preds = %rf69_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %rf69_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %rf69_write_reg.exit

rf69_write_reg.exit:                              ; preds = %if.end.i.i.i.i.i.i.i, %rf69_read_reg.exit.rf69_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #3
  br label %cleanup

cleanup:                                          ; preds = %rf69_write_reg.exit, %if.then, %do.body
  %retval.0 = phi i32 [ %call.i.i.i, %rf69_write_reg.exit ], [ -22, %if.then ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rf69_get_flag(ptr noundef %spi, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  %cmd.addr.i.i217 = alloca i8, align 1
  %result.i.i218 = alloca i8, align 1
  %cmd.addr.i.i208 = alloca i8, align 1
  %result.i.i209 = alloca i8, align 1
  %cmd.addr.i.i199 = alloca i8, align 1
  %result.i.i200 = alloca i8, align 1
  %cmd.addr.i.i190 = alloca i8, align 1
  %result.i.i191 = alloca i8, align 1
  %cmd.addr.i.i181 = alloca i8, align 1
  %result.i.i182 = alloca i8, align 1
  %cmd.addr.i.i172 = alloca i8, align 1
  %result.i.i173 = alloca i8, align 1
  %cmd.addr.i.i163 = alloca i8, align 1
  %result.i.i164 = alloca i8, align 1
  %cmd.addr.i.i154 = alloca i8, align 1
  %result.i.i155 = alloca i8, align 1
  %cmd.addr.i.i145 = alloca i8, align 1
  %result.i.i146 = alloca i8, align 1
  %cmd.addr.i.i136 = alloca i8, align 1
  %result.i.i137 = alloca i8, align 1
  %cmd.addr.i.i127 = alloca i8, align 1
  %result.i.i128 = alloca i8, align 1
  %cmd.addr.i.i118 = alloca i8, align 1
  %result.i.i119 = alloca i8, align 1
  %cmd.addr.i.i109 = alloca i8, align 1
  %result.i.i110 = alloca i8, align 1
  %cmd.addr.i.i100 = alloca i8, align 1
  %result.i.i101 = alloca i8, align 1
  %cmd.addr.i.i91 = alloca i8, align 1
  %result.i.i92 = alloca i8, align 1
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %flag to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %flag, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb6
    i32 3, label %sw.bb11
    i32 4, label %sw.bb16
    i32 5, label %sw.bb21
    i32 6, label %sw.bb26
    i32 7, label %sw.bb31
    i32 8, label %sw.bb36
    i32 9, label %sw.bb41
    i32 10, label %sw.bb46
    i32 11, label %sw.bb51
    i32 12, label %sw.bb56
    i32 13, label %sw.bb61
    i32 14, label %sw.bb66
    i32 15, label %sw.bb71
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #3
  %1 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 39, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #3
  %2 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %result.i.i, align 1, !annotation !126
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.rf69_read_reg.exit_crit_edge, label %cond.false.i.i

sw.bb.rf69_read_reg.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit

cond.false.i.i:                                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %result.i.i, align 1
  %conv.i.i = zext i8 %4 to i32
  br label %rf69_read_reg.exit

rf69_read_reg.exit:                               ; preds = %cond.false.i.i, %sw.bb.rf69_read_reg.exit_crit_edge
  %cond.i.i = phi i32 [ %conv.i.i, %cond.false.i.i ], [ %call.i.i, %sw.bb.rf69_read_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #3
  %5 = and i32 %cond.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool = icmp ne i32 %5, 0
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i91) #3
  %6 = ptrtoint ptr %cmd.addr.i.i91 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 39, ptr %cmd.addr.i.i91, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i92) #3
  %7 = ptrtoint ptr %result.i.i92 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %result.i.i92, align 1, !annotation !126
  %call.i.i93 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i91, i32 noundef 1, ptr noundef nonnull %result.i.i92, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i93)
  %cmp.i.i94 = icmp slt i32 %call.i.i93, 0
  br i1 %cmp.i.i94, label %sw.bb1.rf69_read_reg.exit99_crit_edge, label %cond.false.i.i96

sw.bb1.rf69_read_reg.exit99_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit99

cond.false.i.i96:                                 ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %result.i.i92 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %result.i.i92, align 1
  %conv.i.i95 = zext i8 %9 to i32
  br label %rf69_read_reg.exit99

rf69_read_reg.exit99:                             ; preds = %cond.false.i.i96, %sw.bb1.rf69_read_reg.exit99_crit_edge
  %cond.i.i97 = phi i32 [ %conv.i.i95, %cond.false.i.i96 ], [ %call.i.i93, %sw.bb1.rf69_read_reg.exit99_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i92) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i91) #3
  %10 = and i32 %cond.i.i97, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5 = icmp ne i32 %10, 0
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i100) #3
  %11 = ptrtoint ptr %cmd.addr.i.i100 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 39, ptr %cmd.addr.i.i100, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i101) #3
  %12 = ptrtoint ptr %result.i.i101 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %result.i.i101, align 1, !annotation !126
  %call.i.i102 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i100, i32 noundef 1, ptr noundef nonnull %result.i.i101, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102)
  %cmp.i.i103 = icmp slt i32 %call.i.i102, 0
  br i1 %cmp.i.i103, label %sw.bb6.rf69_read_reg.exit108_crit_edge, label %cond.false.i.i105

sw.bb6.rf69_read_reg.exit108_crit_edge:           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit108

cond.false.i.i105:                                ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %result.i.i101 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %result.i.i101, align 1
  %conv.i.i104 = zext i8 %14 to i32
  br label %rf69_read_reg.exit108

rf69_read_reg.exit108:                            ; preds = %cond.false.i.i105, %sw.bb6.rf69_read_reg.exit108_crit_edge
  %cond.i.i106 = phi i32 [ %conv.i.i104, %cond.false.i.i105 ], [ %call.i.i102, %sw.bb6.rf69_read_reg.exit108_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i101) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i100) #3
  %15 = and i32 %cond.i.i106, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10 = icmp ne i32 %15, 0
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i109) #3
  %16 = ptrtoint ptr %cmd.addr.i.i109 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 39, ptr %cmd.addr.i.i109, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i110) #3
  %17 = ptrtoint ptr %result.i.i110 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %result.i.i110, align 1, !annotation !126
  %call.i.i111 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i109, i32 noundef 1, ptr noundef nonnull %result.i.i110, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i111)
  %cmp.i.i112 = icmp slt i32 %call.i.i111, 0
  br i1 %cmp.i.i112, label %sw.bb11.rf69_read_reg.exit117_crit_edge, label %cond.false.i.i114

sw.bb11.rf69_read_reg.exit117_crit_edge:          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit117

cond.false.i.i114:                                ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %result.i.i110 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %result.i.i110, align 1
  %conv.i.i113 = zext i8 %19 to i32
  br label %rf69_read_reg.exit117

rf69_read_reg.exit117:                            ; preds = %cond.false.i.i114, %sw.bb11.rf69_read_reg.exit117_crit_edge
  %cond.i.i115 = phi i32 [ %conv.i.i113, %cond.false.i.i114 ], [ %call.i.i111, %sw.bb11.rf69_read_reg.exit117_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i110) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i109) #3
  %20 = and i32 %cond.i.i115, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool15 = icmp ne i32 %20, 0
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i118) #3
  %21 = ptrtoint ptr %cmd.addr.i.i118 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 39, ptr %cmd.addr.i.i118, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i119) #3
  %22 = ptrtoint ptr %result.i.i119 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %result.i.i119, align 1, !annotation !126
  %call.i.i120 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i118, i32 noundef 1, ptr noundef nonnull %result.i.i119, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i120)
  %cmp.i.i121 = icmp slt i32 %call.i.i120, 0
  br i1 %cmp.i.i121, label %sw.bb16.rf69_read_reg.exit126_crit_edge, label %cond.false.i.i123

sw.bb16.rf69_read_reg.exit126_crit_edge:          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit126

cond.false.i.i123:                                ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %result.i.i119 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %result.i.i119, align 1
  %conv.i.i122 = zext i8 %24 to i32
  br label %rf69_read_reg.exit126

rf69_read_reg.exit126:                            ; preds = %cond.false.i.i123, %sw.bb16.rf69_read_reg.exit126_crit_edge
  %cond.i.i124 = phi i32 [ %conv.i.i122, %cond.false.i.i123 ], [ %call.i.i120, %sw.bb16.rf69_read_reg.exit126_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i119) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i118) #3
  %25 = and i32 %cond.i.i124, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool20 = icmp ne i32 %25, 0
  br label %return

sw.bb21:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i127) #3
  %26 = ptrtoint ptr %cmd.addr.i.i127 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 39, ptr %cmd.addr.i.i127, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i128) #3
  %27 = ptrtoint ptr %result.i.i128 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %result.i.i128, align 1, !annotation !126
  %call.i.i129 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i127, i32 noundef 1, ptr noundef nonnull %result.i.i128, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i129)
  %cmp.i.i130 = icmp slt i32 %call.i.i129, 0
  br i1 %cmp.i.i130, label %sw.bb21.rf69_read_reg.exit135_crit_edge, label %cond.false.i.i132

sw.bb21.rf69_read_reg.exit135_crit_edge:          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit135

cond.false.i.i132:                                ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %result.i.i128 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %result.i.i128, align 1
  %conv.i.i131 = zext i8 %29 to i32
  br label %rf69_read_reg.exit135

rf69_read_reg.exit135:                            ; preds = %cond.false.i.i132, %sw.bb21.rf69_read_reg.exit135_crit_edge
  %cond.i.i133 = phi i32 [ %conv.i.i131, %cond.false.i.i132 ], [ %call.i.i129, %sw.bb21.rf69_read_reg.exit135_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i128) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i127) #3
  %30 = and i32 %cond.i.i133, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool25 = icmp ne i32 %30, 0
  br label %return

sw.bb26:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i136) #3
  %31 = ptrtoint ptr %cmd.addr.i.i136 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 39, ptr %cmd.addr.i.i136, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i137) #3
  %32 = ptrtoint ptr %result.i.i137 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %result.i.i137, align 1, !annotation !126
  %call.i.i138 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i136, i32 noundef 1, ptr noundef nonnull %result.i.i137, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i138)
  %cmp.i.i139 = icmp slt i32 %call.i.i138, 0
  br i1 %cmp.i.i139, label %sw.bb26.rf69_read_reg.exit144_crit_edge, label %cond.false.i.i141

sw.bb26.rf69_read_reg.exit144_crit_edge:          ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit144

cond.false.i.i141:                                ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #5
  %33 = ptrtoint ptr %result.i.i137 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %result.i.i137, align 1
  %conv.i.i140 = zext i8 %34 to i32
  br label %rf69_read_reg.exit144

rf69_read_reg.exit144:                            ; preds = %cond.false.i.i141, %sw.bb26.rf69_read_reg.exit144_crit_edge
  %cond.i.i142 = phi i32 [ %conv.i.i140, %cond.false.i.i141 ], [ %call.i.i138, %sw.bb26.rf69_read_reg.exit144_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i137) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i136) #3
  %35 = and i32 %cond.i.i142, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool30 = icmp ne i32 %35, 0
  br label %return

sw.bb31:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i145) #3
  %36 = ptrtoint ptr %cmd.addr.i.i145 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 39, ptr %cmd.addr.i.i145, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i146) #3
  %37 = ptrtoint ptr %result.i.i146 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %result.i.i146, align 1, !annotation !126
  %call.i.i147 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i145, i32 noundef 1, ptr noundef nonnull %result.i.i146, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i147)
  %cmp.i.i148 = icmp slt i32 %call.i.i147, 0
  br i1 %cmp.i.i148, label %sw.bb31.rf69_read_reg.exit153_crit_edge, label %cond.false.i.i150

sw.bb31.rf69_read_reg.exit153_crit_edge:          ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit153

cond.false.i.i150:                                ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #5
  %38 = ptrtoint ptr %result.i.i146 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %result.i.i146, align 1
  %conv.i.i149 = zext i8 %39 to i32
  br label %rf69_read_reg.exit153

rf69_read_reg.exit153:                            ; preds = %cond.false.i.i150, %sw.bb31.rf69_read_reg.exit153_crit_edge
  %cond.i.i151 = phi i32 [ %conv.i.i149, %cond.false.i.i150 ], [ %call.i.i147, %sw.bb31.rf69_read_reg.exit153_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i146) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i145) #3
  %40 = and i32 %cond.i.i151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool35 = icmp ne i32 %40, 0
  br label %return

sw.bb36:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i154) #3
  %41 = ptrtoint ptr %cmd.addr.i.i154 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 40, ptr %cmd.addr.i.i154, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i155) #3
  %42 = ptrtoint ptr %result.i.i155 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %result.i.i155, align 1, !annotation !126
  %call.i.i156 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i154, i32 noundef 1, ptr noundef nonnull %result.i.i155, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i156)
  %cmp.i.i157 = icmp slt i32 %call.i.i156, 0
  br i1 %cmp.i.i157, label %sw.bb36.rf69_read_reg.exit162_crit_edge, label %cond.false.i.i159

sw.bb36.rf69_read_reg.exit162_crit_edge:          ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit162

cond.false.i.i159:                                ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #5
  %43 = ptrtoint ptr %result.i.i155 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %result.i.i155, align 1
  %conv.i.i158 = zext i8 %44 to i32
  br label %rf69_read_reg.exit162

rf69_read_reg.exit162:                            ; preds = %cond.false.i.i159, %sw.bb36.rf69_read_reg.exit162_crit_edge
  %cond.i.i160 = phi i32 [ %conv.i.i158, %cond.false.i.i159 ], [ %call.i.i156, %sw.bb36.rf69_read_reg.exit162_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i155) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i154) #3
  %45 = and i32 %cond.i.i160, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool40 = icmp ne i32 %45, 0
  br label %return

sw.bb41:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i163) #3
  %46 = ptrtoint ptr %cmd.addr.i.i163 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 40, ptr %cmd.addr.i.i163, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i164) #3
  %47 = ptrtoint ptr %result.i.i164 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %result.i.i164, align 1, !annotation !126
  %call.i.i165 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i163, i32 noundef 1, ptr noundef nonnull %result.i.i164, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i165)
  %cmp.i.i166 = icmp slt i32 %call.i.i165, 0
  br i1 %cmp.i.i166, label %sw.bb41.rf69_read_reg.exit171_crit_edge, label %cond.false.i.i168

sw.bb41.rf69_read_reg.exit171_crit_edge:          ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit171

cond.false.i.i168:                                ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #5
  %48 = ptrtoint ptr %result.i.i164 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %result.i.i164, align 1
  %conv.i.i167 = zext i8 %49 to i32
  br label %rf69_read_reg.exit171

rf69_read_reg.exit171:                            ; preds = %cond.false.i.i168, %sw.bb41.rf69_read_reg.exit171_crit_edge
  %cond.i.i169 = phi i32 [ %conv.i.i167, %cond.false.i.i168 ], [ %call.i.i165, %sw.bb41.rf69_read_reg.exit171_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i164) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i163) #3
  %50 = and i32 %cond.i.i169, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool45.not = icmp eq i32 %50, 0
  br label %return

sw.bb46:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i172) #3
  %51 = ptrtoint ptr %cmd.addr.i.i172 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 40, ptr %cmd.addr.i.i172, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i173) #3
  %52 = ptrtoint ptr %result.i.i173 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %result.i.i173, align 1, !annotation !126
  %call.i.i174 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i172, i32 noundef 1, ptr noundef nonnull %result.i.i173, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i174)
  %cmp.i.i175 = icmp slt i32 %call.i.i174, 0
  br i1 %cmp.i.i175, label %sw.bb46.rf69_read_reg.exit180_crit_edge, label %cond.false.i.i177

sw.bb46.rf69_read_reg.exit180_crit_edge:          ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit180

cond.false.i.i177:                                ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #5
  %53 = ptrtoint ptr %result.i.i173 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %result.i.i173, align 1
  %conv.i.i176 = zext i8 %54 to i32
  br label %rf69_read_reg.exit180

rf69_read_reg.exit180:                            ; preds = %cond.false.i.i177, %sw.bb46.rf69_read_reg.exit180_crit_edge
  %cond.i.i178 = phi i32 [ %conv.i.i176, %cond.false.i.i177 ], [ %call.i.i174, %sw.bb46.rf69_read_reg.exit180_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i173) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i172) #3
  %55 = and i32 %cond.i.i178, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool50 = icmp ne i32 %55, 0
  br label %return

sw.bb51:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i181) #3
  %56 = ptrtoint ptr %cmd.addr.i.i181 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 40, ptr %cmd.addr.i.i181, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i182) #3
  %57 = ptrtoint ptr %result.i.i182 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -1, ptr %result.i.i182, align 1, !annotation !126
  %call.i.i183 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i181, i32 noundef 1, ptr noundef nonnull %result.i.i182, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i183)
  %cmp.i.i184 = icmp slt i32 %call.i.i183, 0
  br i1 %cmp.i.i184, label %sw.bb51.rf69_read_reg.exit189_crit_edge, label %cond.false.i.i186

sw.bb51.rf69_read_reg.exit189_crit_edge:          ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit189

cond.false.i.i186:                                ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #5
  %58 = ptrtoint ptr %result.i.i182 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %result.i.i182, align 1
  %conv.i.i185 = zext i8 %59 to i32
  br label %rf69_read_reg.exit189

rf69_read_reg.exit189:                            ; preds = %cond.false.i.i186, %sw.bb51.rf69_read_reg.exit189_crit_edge
  %cond.i.i187 = phi i32 [ %conv.i.i185, %cond.false.i.i186 ], [ %call.i.i183, %sw.bb51.rf69_read_reg.exit189_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i182) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i181) #3
  %60 = and i32 %cond.i.i187, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool55 = icmp ne i32 %60, 0
  br label %return

sw.bb56:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i190) #3
  %61 = ptrtoint ptr %cmd.addr.i.i190 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 40, ptr %cmd.addr.i.i190, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i191) #3
  %62 = ptrtoint ptr %result.i.i191 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %result.i.i191, align 1, !annotation !126
  %call.i.i192 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i190, i32 noundef 1, ptr noundef nonnull %result.i.i191, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i192)
  %cmp.i.i193 = icmp slt i32 %call.i.i192, 0
  br i1 %cmp.i.i193, label %sw.bb56.rf69_read_reg.exit198_crit_edge, label %cond.false.i.i195

sw.bb56.rf69_read_reg.exit198_crit_edge:          ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit198

cond.false.i.i195:                                ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #5
  %63 = ptrtoint ptr %result.i.i191 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %result.i.i191, align 1
  %conv.i.i194 = zext i8 %64 to i32
  br label %rf69_read_reg.exit198

rf69_read_reg.exit198:                            ; preds = %cond.false.i.i195, %sw.bb56.rf69_read_reg.exit198_crit_edge
  %cond.i.i196 = phi i32 [ %conv.i.i194, %cond.false.i.i195 ], [ %call.i.i192, %sw.bb56.rf69_read_reg.exit198_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i191) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i190) #3
  %65 = and i32 %cond.i.i196, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool60 = icmp ne i32 %65, 0
  br label %return

sw.bb61:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i199) #3
  %66 = ptrtoint ptr %cmd.addr.i.i199 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 40, ptr %cmd.addr.i.i199, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i200) #3
  %67 = ptrtoint ptr %result.i.i200 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -1, ptr %result.i.i200, align 1, !annotation !126
  %call.i.i201 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i199, i32 noundef 1, ptr noundef nonnull %result.i.i200, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i201)
  %cmp.i.i202 = icmp slt i32 %call.i.i201, 0
  br i1 %cmp.i.i202, label %sw.bb61.rf69_read_reg.exit207_crit_edge, label %cond.false.i.i204

sw.bb61.rf69_read_reg.exit207_crit_edge:          ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit207

cond.false.i.i204:                                ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #5
  %68 = ptrtoint ptr %result.i.i200 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %result.i.i200, align 1
  %conv.i.i203 = zext i8 %69 to i32
  br label %rf69_read_reg.exit207

rf69_read_reg.exit207:                            ; preds = %cond.false.i.i204, %sw.bb61.rf69_read_reg.exit207_crit_edge
  %cond.i.i205 = phi i32 [ %conv.i.i203, %cond.false.i.i204 ], [ %call.i.i201, %sw.bb61.rf69_read_reg.exit207_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i200) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i199) #3
  %70 = and i32 %cond.i.i205, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool65 = icmp ne i32 %70, 0
  br label %return

sw.bb66:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i208) #3
  %71 = ptrtoint ptr %cmd.addr.i.i208 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 40, ptr %cmd.addr.i.i208, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i209) #3
  %72 = ptrtoint ptr %result.i.i209 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %result.i.i209, align 1, !annotation !126
  %call.i.i210 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i208, i32 noundef 1, ptr noundef nonnull %result.i.i209, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i210)
  %cmp.i.i211 = icmp slt i32 %call.i.i210, 0
  br i1 %cmp.i.i211, label %sw.bb66.rf69_read_reg.exit216_crit_edge, label %cond.false.i.i213

sw.bb66.rf69_read_reg.exit216_crit_edge:          ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit216

cond.false.i.i213:                                ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #5
  %73 = ptrtoint ptr %result.i.i209 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %result.i.i209, align 1
  %conv.i.i212 = zext i8 %74 to i32
  br label %rf69_read_reg.exit216

rf69_read_reg.exit216:                            ; preds = %cond.false.i.i213, %sw.bb66.rf69_read_reg.exit216_crit_edge
  %cond.i.i214 = phi i32 [ %conv.i.i212, %cond.false.i.i213 ], [ %call.i.i210, %sw.bb66.rf69_read_reg.exit216_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i209) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i208) #3
  %75 = and i32 %cond.i.i214, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool70 = icmp ne i32 %75, 0
  br label %return

sw.bb71:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i217) #3
  %76 = ptrtoint ptr %cmd.addr.i.i217 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 40, ptr %cmd.addr.i.i217, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i218) #3
  %77 = ptrtoint ptr %result.i.i218 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -1, ptr %result.i.i218, align 1, !annotation !126
  %call.i.i219 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i217, i32 noundef 1, ptr noundef nonnull %result.i.i218, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i219)
  %cmp.i.i220 = icmp slt i32 %call.i.i219, 0
  br i1 %cmp.i.i220, label %sw.bb71.rf69_read_reg.exit225_crit_edge, label %cond.false.i.i222

sw.bb71.rf69_read_reg.exit225_crit_edge:          ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit225

cond.false.i.i222:                                ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #5
  %78 = ptrtoint ptr %result.i.i218 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %result.i.i218, align 1
  %conv.i.i221 = zext i8 %79 to i32
  br label %rf69_read_reg.exit225

rf69_read_reg.exit225:                            ; preds = %cond.false.i.i222, %sw.bb71.rf69_read_reg.exit225_crit_edge
  %cond.i.i223 = phi i32 [ %conv.i.i221, %cond.false.i.i222 ], [ %call.i.i219, %sw.bb71.rf69_read_reg.exit225_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i218) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i217) #3
  %80 = and i32 %cond.i.i223, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool75 = icmp ne i32 %80, 0
  br label %return

return:                                           ; preds = %rf69_read_reg.exit225, %rf69_read_reg.exit216, %rf69_read_reg.exit207, %rf69_read_reg.exit198, %rf69_read_reg.exit189, %rf69_read_reg.exit180, %rf69_read_reg.exit171, %rf69_read_reg.exit162, %rf69_read_reg.exit153, %rf69_read_reg.exit144, %rf69_read_reg.exit135, %rf69_read_reg.exit126, %rf69_read_reg.exit117, %rf69_read_reg.exit108, %rf69_read_reg.exit99, %rf69_read_reg.exit, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool75, %rf69_read_reg.exit225 ], [ %tobool70, %rf69_read_reg.exit216 ], [ %tobool65, %rf69_read_reg.exit207 ], [ %tobool60, %rf69_read_reg.exit198 ], [ %tobool55, %rf69_read_reg.exit189 ], [ %tobool50, %rf69_read_reg.exit180 ], [ %tobool45.not, %rf69_read_reg.exit171 ], [ %tobool40, %rf69_read_reg.exit162 ], [ %tobool35, %rf69_read_reg.exit153 ], [ %tobool30, %rf69_read_reg.exit144 ], [ %tobool25, %rf69_read_reg.exit135 ], [ %tobool20, %rf69_read_reg.exit126 ], [ %tobool15, %rf69_read_reg.exit117 ], [ %tobool10, %rf69_read_reg.exit108 ], [ %tobool5, %rf69_read_reg.exit99 ], [ %tobool, %rf69_read_reg.exit ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_rssi_threshold(ptr noundef %spi, i8 noundef zeroext %threshold) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #3
  %0 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %1 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -87, ptr %buffer.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %threshold, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #3
  %3 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %5 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  %7 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.rf69_write_reg.exit_crit_edge

entry.rf69_write_reg.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %rf69_write_reg.exit

rf69_write_reg.exit:                              ; preds = %if.end.i.i.i.i.i.i.i, %entry.rf69_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #3
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_preamble_length(ptr noundef %spi, i16 noundef zeroext %preamble_length) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i12 = alloca %struct.spi_message, align 4
  %t.i.i13 = alloca %struct.spi_transfer, align 4
  %buffer.i14 = alloca [2 x i8], align 1
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i16 %preamble_length, 8
  %conv2 = trunc i16 %0 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #3
  %1 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -84, ptr %buffer.i, align 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #3
  %4 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 92)
  %6 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  %8 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 40)
  %10 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.rf69_write_reg.exit_crit_edge

entry.rf69_write_reg.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %rf69_write_reg.exit

rf69_write_reg.exit:                              ; preds = %if.end.i.i.i.i.i.i.i, %entry.rf69_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %rf69_write_reg.exit.cleanup_crit_edge

rf69_write_reg.exit.cleanup_crit_edge:            ; preds = %rf69_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %rf69_write_reg.exit
  %conv5 = trunc i16 %preamble_length to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i14) #3
  %18 = getelementptr inbounds [2 x i8], ptr %buffer.i14, i32 0, i32 1
  %19 = ptrtoint ptr %buffer.i14 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -83, ptr %buffer.i14, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv5, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i13) #3
  %21 = getelementptr inbounds i8, ptr %t.i.i13, i32 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 92)
  %23 = ptrtoint ptr %t.i.i13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buffer.i14, ptr %t.i.i13, align 4
  %len1.i.i15 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i13, i32 0, i32 2
  %24 = ptrtoint ptr %len1.i.i15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %len1.i.i15, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i12) #3
  %25 = getelementptr inbounds i8, ptr %msg.i.i.i12, i32 8
  %26 = call ptr @memset(ptr %25, i32 0, i32 40)
  %27 = ptrtoint ptr %msg.i.i.i12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %msg.i.i.i12, ptr %msg.i.i.i12, align 4
  %prev.i.i.i.i.i.i.i16 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i12, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i.i.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i12, ptr %prev.i.i.i.i.i.i.i16, align 4
  %resources.i.i.i.i.i.i17 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i12, i32 0, i32 10
  %29 = ptrtoint ptr %resources.i.i.i.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %resources.i.i.i.i.i.i17, ptr %resources.i.i.i.i.i.i17, align 4
  %prev.i2.i.i.i.i.i.i18 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i12, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %prev.i2.i.i.i.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %resources.i.i.i.i.i.i17, ptr %prev.i2.i.i.i.i.i.i18, align 4
  %transfer_list.i.i.i.i.i19 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i13, i32 0, i32 18
  %call.i.i.i.i.i.i.i20 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i19, ptr noundef nonnull %msg.i.i.i12, ptr noundef nonnull %msg.i.i.i12) #3
  br i1 %call.i.i.i.i.i.i.i20, label %if.end.i.i.i.i.i.i.i22, label %if.end.rf69_write_reg.exit24_crit_edge

if.end.rf69_write_reg.exit24_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit24

if.end.i.i.i.i.i.i.i22:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %prev.i.i.i.i.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %transfer_list.i.i.i.i.i19, ptr %prev.i.i.i.i.i.i.i16, align 4
  %32 = ptrtoint ptr %transfer_list.i.i.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i.i12, ptr %transfer_list.i.i.i.i.i19, align 4
  %prev3.i.i.i.i.i.i.i21 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i13, i32 0, i32 18, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i.i12, ptr %prev3.i.i.i.i.i.i.i21, align 4
  %34 = ptrtoint ptr %msg.i.i.i12 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %transfer_list.i.i.i.i.i19, ptr %msg.i.i.i12, align 4
  br label %rf69_write_reg.exit24

rf69_write_reg.exit24:                            ; preds = %if.end.i.i.i.i.i.i.i22, %if.end.rf69_write_reg.exit24_crit_edge
  %call.i.i.i23 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i12) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i12) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i13) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i14) #3
  br label %cleanup

cleanup:                                          ; preds = %rf69_write_reg.exit24, %rf69_write_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i23, %rf69_write_reg.exit24 ], [ %call.i.i.i, %rf69_write_reg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_enable_sync(ptr noundef %spi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rf69_set_bit(ptr noundef %spi, i8 noundef zeroext 46, i8 noundef zeroext -128)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_disable_sync(ptr noundef %spi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rf69_clear_bit(ptr noundef %spi, i8 noundef zeroext 46, i8 noundef zeroext -128)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_fifo_fill_condition(ptr noundef %spi, i32 noundef %fifo_fill_condition) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fifo_fill_condition to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %fifo_fill_condition, label %do.body [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call fastcc i32 @rf69_set_bit(ptr noundef %spi, i8 noundef zeroext 46, i8 noundef zeroext 64)
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call fastcc i32 @rf69_clear_bit(ptr noundef %spi, i8 noundef zeroext 46, i8 noundef zeroext 64)
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_fifo_fill_condition.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_fifo_fill_condition, %if.then)) #3
          to label %return [label %if.then], !srcloc !125

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_fifo_fill_condition.__UNIQUE_ID_ddebug247, ptr noundef %spi, ptr noundef nonnull @.str.30, i32 noundef %fifo_fill_condition) #3
  br label %return

return:                                           ; preds = %if.then, %do.body, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %if.then ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_sync_size(ptr noundef %spi, i8 noundef zeroext %sync_size) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i.i = alloca [2 x i8], align 1
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %sync_size to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %sync_size)
  %cmp = icmp ugt i8 %sync_size, 7
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_sync_size.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_sync_size, %if.then4)) #3
          to label %return [label %if.then4], !srcloc !125

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_sync_size.__UNIQUE_ID_ddebug248, ptr noundef %spi, ptr noundef nonnull @.str.32, i32 noundef %conv) #3
  br label %return

if.end6:                                          ; preds = %entry
  %shl = shl nuw nsw i8 %sync_size, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %0 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 46, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #3
  %1 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !126
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end6.rf69_read_reg.exit.i_crit_edge, label %cond.false.i.i.i

if.end6.rf69_read_reg.exit.i_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit.i

cond.false.i.i.i:                                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %result.i.i.i, align 1
  %conv.i.i.i = zext i8 %3 to i32
  br label %rf69_read_reg.exit.i

rf69_read_reg.exit.i:                             ; preds = %cond.false.i.i.i, %if.end6.rf69_read_reg.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv.i.i.i, %cond.false.i.i.i ], [ %call.i.i.i, %if.end6.rf69_read_reg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %conv.i.i = trunc i32 %cond.i.i.i to i8
  %and.i = and i8 %conv.i.i, -57
  %or.i = or i8 %and.i, %shl
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i) #3
  %4 = getelementptr inbounds [2 x i8], ptr %buffer.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -82, ptr %buffer.i.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or.i, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #3
  %7 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 92)
  %9 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buffer.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  %11 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge

rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge: ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_mod_write.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %rf69_read_mod_write.exit

rf69_read_mod_write.exit:                         ; preds = %if.end.i.i.i.i.i.i.i.i, %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i) #3
  br label %return

return:                                           ; preds = %rf69_read_mod_write.exit, %if.then4, %do.body
  %retval.0 = phi i32 [ %call.i.i.i.i, %rf69_read_mod_write.exit ], [ -22, %if.then4 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_sync_values(ptr noundef %spi, ptr nocapture noundef readonly %sync_values) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i123 = alloca %struct.spi_message, align 4
  %t.i.i124 = alloca %struct.spi_transfer, align 4
  %buffer.i125 = alloca [2 x i8], align 1
  %msg.i.i.i110 = alloca %struct.spi_message, align 4
  %t.i.i111 = alloca %struct.spi_transfer, align 4
  %buffer.i112 = alloca [2 x i8], align 1
  %msg.i.i.i97 = alloca %struct.spi_message, align 4
  %t.i.i98 = alloca %struct.spi_transfer, align 4
  %buffer.i99 = alloca [2 x i8], align 1
  %msg.i.i.i84 = alloca %struct.spi_message, align 4
  %t.i.i85 = alloca %struct.spi_transfer, align 4
  %buffer.i86 = alloca [2 x i8], align 1
  %msg.i.i.i71 = alloca %struct.spi_message, align 4
  %t.i.i72 = alloca %struct.spi_transfer, align 4
  %buffer.i73 = alloca [2 x i8], align 1
  %msg.i.i.i58 = alloca %struct.spi_message, align 4
  %t.i.i59 = alloca %struct.spi_transfer, align 4
  %buffer.i60 = alloca [2 x i8], align 1
  %msg.i.i.i45 = alloca %struct.spi_message, align 4
  %t.i.i46 = alloca %struct.spi_transfer, align 4
  %buffer.i47 = alloca [2 x i8], align 1
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sync_values to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sync_values, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #3
  %2 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %3 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -81, ptr %buffer.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %1, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #3
  %5 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  %9 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.rf69_write_reg.exit_crit_edge

entry.rf69_write_reg.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %rf69_write_reg.exit

rf69_write_reg.exit:                              ; preds = %if.end.i.i.i.i.i.i.i, %entry.rf69_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #3
  %arrayidx2 = getelementptr i8, ptr %sync_values, i32 1
  %19 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx2, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i47) #3
  %21 = getelementptr inbounds [2 x i8], ptr %buffer.i47, i32 0, i32 1
  %22 = ptrtoint ptr %buffer.i47 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -80, ptr %buffer.i47, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %20, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i46) #3
  %24 = getelementptr inbounds i8, ptr %t.i.i46, i32 4
  %25 = call ptr @memset(ptr %24, i32 0, i32 92)
  %26 = ptrtoint ptr %t.i.i46 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buffer.i47, ptr %t.i.i46, align 4
  %len1.i.i48 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i46, i32 0, i32 2
  %27 = ptrtoint ptr %len1.i.i48 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %len1.i.i48, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i45) #3
  %28 = getelementptr inbounds i8, ptr %msg.i.i.i45, i32 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 40)
  %30 = ptrtoint ptr %msg.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %msg.i.i.i45, ptr %msg.i.i.i45, align 4
  %prev.i.i.i.i.i.i.i49 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i45, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i.i.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i.i45, ptr %prev.i.i.i.i.i.i.i49, align 4
  %resources.i.i.i.i.i.i50 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i45, i32 0, i32 10
  %32 = ptrtoint ptr %resources.i.i.i.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %resources.i.i.i.i.i.i50, ptr %resources.i.i.i.i.i.i50, align 4
  %prev.i2.i.i.i.i.i.i51 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i45, i32 0, i32 10, i32 1
  %33 = ptrtoint ptr %prev.i2.i.i.i.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %resources.i.i.i.i.i.i50, ptr %prev.i2.i.i.i.i.i.i51, align 4
  %transfer_list.i.i.i.i.i52 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i46, i32 0, i32 18
  %call.i.i.i.i.i.i.i53 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i52, ptr noundef nonnull %msg.i.i.i45, ptr noundef nonnull %msg.i.i.i45) #3
  br i1 %call.i.i.i.i.i.i.i53, label %if.end.i.i.i.i.i.i.i55, label %rf69_write_reg.exit.rf69_write_reg.exit57_crit_edge

rf69_write_reg.exit.rf69_write_reg.exit57_crit_edge: ; preds = %rf69_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit57

if.end.i.i.i.i.i.i.i55:                           ; preds = %rf69_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %prev.i.i.i.i.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %transfer_list.i.i.i.i.i52, ptr %prev.i.i.i.i.i.i.i49, align 4
  %35 = ptrtoint ptr %transfer_list.i.i.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i.i45, ptr %transfer_list.i.i.i.i.i52, align 4
  %prev3.i.i.i.i.i.i.i54 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i46, i32 0, i32 18, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i.i.i.i.i54 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i.i45, ptr %prev3.i.i.i.i.i.i.i54, align 4
  %37 = ptrtoint ptr %msg.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %transfer_list.i.i.i.i.i52, ptr %msg.i.i.i45, align 4
  br label %rf69_write_reg.exit57

rf69_write_reg.exit57:                            ; preds = %if.end.i.i.i.i.i.i.i55, %rf69_write_reg.exit.rf69_write_reg.exit57_crit_edge
  %call.i.i.i56 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i45) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i45) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i46) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i47) #3
  %arrayidx5 = getelementptr i8, ptr %sync_values, i32 2
  %38 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx5, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i60) #3
  %40 = getelementptr inbounds [2 x i8], ptr %buffer.i60, i32 0, i32 1
  %41 = ptrtoint ptr %buffer.i60 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -79, ptr %buffer.i60, align 1
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %39, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i59) #3
  %43 = getelementptr inbounds i8, ptr %t.i.i59, i32 4
  %44 = call ptr @memset(ptr %43, i32 0, i32 92)
  %45 = ptrtoint ptr %t.i.i59 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %buffer.i60, ptr %t.i.i59, align 4
  %len1.i.i61 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i59, i32 0, i32 2
  %46 = ptrtoint ptr %len1.i.i61 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %len1.i.i61, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i58) #3
  %47 = getelementptr inbounds i8, ptr %msg.i.i.i58, i32 8
  %48 = call ptr @memset(ptr %47, i32 0, i32 40)
  %49 = ptrtoint ptr %msg.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %msg.i.i.i58, ptr %msg.i.i.i58, align 4
  %prev.i.i.i.i.i.i.i62 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i58, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i.i.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i.i.i58, ptr %prev.i.i.i.i.i.i.i62, align 4
  %resources.i.i.i.i.i.i63 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i58, i32 0, i32 10
  %51 = ptrtoint ptr %resources.i.i.i.i.i.i63 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %resources.i.i.i.i.i.i63, ptr %resources.i.i.i.i.i.i63, align 4
  %prev.i2.i.i.i.i.i.i64 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i58, i32 0, i32 10, i32 1
  %52 = ptrtoint ptr %prev.i2.i.i.i.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %resources.i.i.i.i.i.i63, ptr %prev.i2.i.i.i.i.i.i64, align 4
  %transfer_list.i.i.i.i.i65 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i59, i32 0, i32 18
  %call.i.i.i.i.i.i.i66 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i65, ptr noundef nonnull %msg.i.i.i58, ptr noundef nonnull %msg.i.i.i58) #3
  br i1 %call.i.i.i.i.i.i.i66, label %if.end.i.i.i.i.i.i.i68, label %rf69_write_reg.exit57.rf69_write_reg.exit70_crit_edge

rf69_write_reg.exit57.rf69_write_reg.exit70_crit_edge: ; preds = %rf69_write_reg.exit57
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit70

if.end.i.i.i.i.i.i.i68:                           ; preds = %rf69_write_reg.exit57
  call void @__sanitizer_cov_trace_pc() #5
  %53 = ptrtoint ptr %prev.i.i.i.i.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %transfer_list.i.i.i.i.i65, ptr %prev.i.i.i.i.i.i.i62, align 4
  %54 = ptrtoint ptr %transfer_list.i.i.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %msg.i.i.i58, ptr %transfer_list.i.i.i.i.i65, align 4
  %prev3.i.i.i.i.i.i.i67 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i59, i32 0, i32 18, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i.i.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msg.i.i.i58, ptr %prev3.i.i.i.i.i.i.i67, align 4
  %56 = ptrtoint ptr %msg.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %transfer_list.i.i.i.i.i65, ptr %msg.i.i.i58, align 4
  br label %rf69_write_reg.exit70

rf69_write_reg.exit70:                            ; preds = %if.end.i.i.i.i.i.i.i68, %rf69_write_reg.exit57.rf69_write_reg.exit70_crit_edge
  %call.i.i.i69 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i58) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i58) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i59) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i60) #3
  %arrayidx8 = getelementptr i8, ptr %sync_values, i32 3
  %57 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i73) #3
  %59 = getelementptr inbounds [2 x i8], ptr %buffer.i73, i32 0, i32 1
  %60 = ptrtoint ptr %buffer.i73 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -78, ptr %buffer.i73, align 1
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %58, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i72) #3
  %62 = getelementptr inbounds i8, ptr %t.i.i72, i32 4
  %63 = call ptr @memset(ptr %62, i32 0, i32 92)
  %64 = ptrtoint ptr %t.i.i72 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %buffer.i73, ptr %t.i.i72, align 4
  %len1.i.i74 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i72, i32 0, i32 2
  %65 = ptrtoint ptr %len1.i.i74 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %len1.i.i74, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i71) #3
  %66 = getelementptr inbounds i8, ptr %msg.i.i.i71, i32 8
  %67 = call ptr @memset(ptr %66, i32 0, i32 40)
  %68 = ptrtoint ptr %msg.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %msg.i.i.i71, ptr %msg.i.i.i71, align 4
  %prev.i.i.i.i.i.i.i75 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i71, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i.i.i.i.i.i.i75 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %msg.i.i.i71, ptr %prev.i.i.i.i.i.i.i75, align 4
  %resources.i.i.i.i.i.i76 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i71, i32 0, i32 10
  %70 = ptrtoint ptr %resources.i.i.i.i.i.i76 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %resources.i.i.i.i.i.i76, ptr %resources.i.i.i.i.i.i76, align 4
  %prev.i2.i.i.i.i.i.i77 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i71, i32 0, i32 10, i32 1
  %71 = ptrtoint ptr %prev.i2.i.i.i.i.i.i77 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %resources.i.i.i.i.i.i76, ptr %prev.i2.i.i.i.i.i.i77, align 4
  %transfer_list.i.i.i.i.i78 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i72, i32 0, i32 18
  %call.i.i.i.i.i.i.i79 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i78, ptr noundef nonnull %msg.i.i.i71, ptr noundef nonnull %msg.i.i.i71) #3
  br i1 %call.i.i.i.i.i.i.i79, label %if.end.i.i.i.i.i.i.i81, label %rf69_write_reg.exit70.rf69_write_reg.exit83_crit_edge

rf69_write_reg.exit70.rf69_write_reg.exit83_crit_edge: ; preds = %rf69_write_reg.exit70
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit83

if.end.i.i.i.i.i.i.i81:                           ; preds = %rf69_write_reg.exit70
  call void @__sanitizer_cov_trace_pc() #5
  %72 = ptrtoint ptr %prev.i.i.i.i.i.i.i75 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %transfer_list.i.i.i.i.i78, ptr %prev.i.i.i.i.i.i.i75, align 4
  %73 = ptrtoint ptr %transfer_list.i.i.i.i.i78 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %msg.i.i.i71, ptr %transfer_list.i.i.i.i.i78, align 4
  %prev3.i.i.i.i.i.i.i80 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i72, i32 0, i32 18, i32 1
  %74 = ptrtoint ptr %prev3.i.i.i.i.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %msg.i.i.i71, ptr %prev3.i.i.i.i.i.i.i80, align 4
  %75 = ptrtoint ptr %msg.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %transfer_list.i.i.i.i.i78, ptr %msg.i.i.i71, align 4
  br label %rf69_write_reg.exit83

rf69_write_reg.exit83:                            ; preds = %if.end.i.i.i.i.i.i.i81, %rf69_write_reg.exit70.rf69_write_reg.exit83_crit_edge
  %call.i.i.i82 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i71) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i71) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i72) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i73) #3
  %arrayidx11 = getelementptr i8, ptr %sync_values, i32 4
  %76 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx11, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i86) #3
  %78 = getelementptr inbounds [2 x i8], ptr %buffer.i86, i32 0, i32 1
  %79 = ptrtoint ptr %buffer.i86 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -77, ptr %buffer.i86, align 1
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %77, ptr %78, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i85) #3
  %81 = getelementptr inbounds i8, ptr %t.i.i85, i32 4
  %82 = call ptr @memset(ptr %81, i32 0, i32 92)
  %83 = ptrtoint ptr %t.i.i85 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %buffer.i86, ptr %t.i.i85, align 4
  %len1.i.i87 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i85, i32 0, i32 2
  %84 = ptrtoint ptr %len1.i.i87 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 2, ptr %len1.i.i87, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i84) #3
  %85 = getelementptr inbounds i8, ptr %msg.i.i.i84, i32 8
  %86 = call ptr @memset(ptr %85, i32 0, i32 40)
  %87 = ptrtoint ptr %msg.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %msg.i.i.i84, ptr %msg.i.i.i84, align 4
  %prev.i.i.i.i.i.i.i88 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i84, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i.i.i.i.i.i.i88 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %msg.i.i.i84, ptr %prev.i.i.i.i.i.i.i88, align 4
  %resources.i.i.i.i.i.i89 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i84, i32 0, i32 10
  %89 = ptrtoint ptr %resources.i.i.i.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %resources.i.i.i.i.i.i89, ptr %resources.i.i.i.i.i.i89, align 4
  %prev.i2.i.i.i.i.i.i90 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i84, i32 0, i32 10, i32 1
  %90 = ptrtoint ptr %prev.i2.i.i.i.i.i.i90 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %resources.i.i.i.i.i.i89, ptr %prev.i2.i.i.i.i.i.i90, align 4
  %transfer_list.i.i.i.i.i91 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i85, i32 0, i32 18
  %call.i.i.i.i.i.i.i92 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i91, ptr noundef nonnull %msg.i.i.i84, ptr noundef nonnull %msg.i.i.i84) #3
  br i1 %call.i.i.i.i.i.i.i92, label %if.end.i.i.i.i.i.i.i94, label %rf69_write_reg.exit83.rf69_write_reg.exit96_crit_edge

rf69_write_reg.exit83.rf69_write_reg.exit96_crit_edge: ; preds = %rf69_write_reg.exit83
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit96

if.end.i.i.i.i.i.i.i94:                           ; preds = %rf69_write_reg.exit83
  call void @__sanitizer_cov_trace_pc() #5
  %91 = ptrtoint ptr %prev.i.i.i.i.i.i.i88 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %transfer_list.i.i.i.i.i91, ptr %prev.i.i.i.i.i.i.i88, align 4
  %92 = ptrtoint ptr %transfer_list.i.i.i.i.i91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %msg.i.i.i84, ptr %transfer_list.i.i.i.i.i91, align 4
  %prev3.i.i.i.i.i.i.i93 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i85, i32 0, i32 18, i32 1
  %93 = ptrtoint ptr %prev3.i.i.i.i.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %msg.i.i.i84, ptr %prev3.i.i.i.i.i.i.i93, align 4
  %94 = ptrtoint ptr %msg.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %transfer_list.i.i.i.i.i91, ptr %msg.i.i.i84, align 4
  br label %rf69_write_reg.exit96

rf69_write_reg.exit96:                            ; preds = %if.end.i.i.i.i.i.i.i94, %rf69_write_reg.exit83.rf69_write_reg.exit96_crit_edge
  %call.i.i.i95 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i84) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i84) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i85) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i86) #3
  %arrayidx14 = getelementptr i8, ptr %sync_values, i32 5
  %95 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx14, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i99) #3
  %97 = getelementptr inbounds [2 x i8], ptr %buffer.i99, i32 0, i32 1
  %98 = ptrtoint ptr %buffer.i99 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -76, ptr %buffer.i99, align 1
  %99 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %96, ptr %97, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i98) #3
  %100 = getelementptr inbounds i8, ptr %t.i.i98, i32 4
  %101 = call ptr @memset(ptr %100, i32 0, i32 92)
  %102 = ptrtoint ptr %t.i.i98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %buffer.i99, ptr %t.i.i98, align 4
  %len1.i.i100 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i98, i32 0, i32 2
  %103 = ptrtoint ptr %len1.i.i100 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 2, ptr %len1.i.i100, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i97) #3
  %104 = getelementptr inbounds i8, ptr %msg.i.i.i97, i32 8
  %105 = call ptr @memset(ptr %104, i32 0, i32 40)
  %106 = ptrtoint ptr %msg.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %msg.i.i.i97, ptr %msg.i.i.i97, align 4
  %prev.i.i.i.i.i.i.i101 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i97, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i.i.i.i.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %msg.i.i.i97, ptr %prev.i.i.i.i.i.i.i101, align 4
  %resources.i.i.i.i.i.i102 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i97, i32 0, i32 10
  %108 = ptrtoint ptr %resources.i.i.i.i.i.i102 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %resources.i.i.i.i.i.i102, ptr %resources.i.i.i.i.i.i102, align 4
  %prev.i2.i.i.i.i.i.i103 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i97, i32 0, i32 10, i32 1
  %109 = ptrtoint ptr %prev.i2.i.i.i.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %resources.i.i.i.i.i.i102, ptr %prev.i2.i.i.i.i.i.i103, align 4
  %transfer_list.i.i.i.i.i104 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i98, i32 0, i32 18
  %call.i.i.i.i.i.i.i105 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i104, ptr noundef nonnull %msg.i.i.i97, ptr noundef nonnull %msg.i.i.i97) #3
  br i1 %call.i.i.i.i.i.i.i105, label %if.end.i.i.i.i.i.i.i107, label %rf69_write_reg.exit96.rf69_write_reg.exit109_crit_edge

rf69_write_reg.exit96.rf69_write_reg.exit109_crit_edge: ; preds = %rf69_write_reg.exit96
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit109

if.end.i.i.i.i.i.i.i107:                          ; preds = %rf69_write_reg.exit96
  call void @__sanitizer_cov_trace_pc() #5
  %110 = ptrtoint ptr %prev.i.i.i.i.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %transfer_list.i.i.i.i.i104, ptr %prev.i.i.i.i.i.i.i101, align 4
  %111 = ptrtoint ptr %transfer_list.i.i.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %msg.i.i.i97, ptr %transfer_list.i.i.i.i.i104, align 4
  %prev3.i.i.i.i.i.i.i106 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i98, i32 0, i32 18, i32 1
  %112 = ptrtoint ptr %prev3.i.i.i.i.i.i.i106 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %msg.i.i.i97, ptr %prev3.i.i.i.i.i.i.i106, align 4
  %113 = ptrtoint ptr %msg.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %transfer_list.i.i.i.i.i104, ptr %msg.i.i.i97, align 4
  br label %rf69_write_reg.exit109

rf69_write_reg.exit109:                           ; preds = %if.end.i.i.i.i.i.i.i107, %rf69_write_reg.exit96.rf69_write_reg.exit109_crit_edge
  %call.i.i.i108 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i97) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i97) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i98) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i99) #3
  %arrayidx17 = getelementptr i8, ptr %sync_values, i32 6
  %114 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx17, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i112) #3
  %116 = getelementptr inbounds [2 x i8], ptr %buffer.i112, i32 0, i32 1
  %117 = ptrtoint ptr %buffer.i112 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -75, ptr %buffer.i112, align 1
  %118 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %115, ptr %116, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i111) #3
  %119 = getelementptr inbounds i8, ptr %t.i.i111, i32 4
  %120 = call ptr @memset(ptr %119, i32 0, i32 92)
  %121 = ptrtoint ptr %t.i.i111 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %buffer.i112, ptr %t.i.i111, align 4
  %len1.i.i113 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i111, i32 0, i32 2
  %122 = ptrtoint ptr %len1.i.i113 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 2, ptr %len1.i.i113, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i110) #3
  %123 = getelementptr inbounds i8, ptr %msg.i.i.i110, i32 8
  %124 = call ptr @memset(ptr %123, i32 0, i32 40)
  %125 = ptrtoint ptr %msg.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %msg.i.i.i110, ptr %msg.i.i.i110, align 4
  %prev.i.i.i.i.i.i.i114 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i110, i32 0, i32 1
  %126 = ptrtoint ptr %prev.i.i.i.i.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %msg.i.i.i110, ptr %prev.i.i.i.i.i.i.i114, align 4
  %resources.i.i.i.i.i.i115 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i110, i32 0, i32 10
  %127 = ptrtoint ptr %resources.i.i.i.i.i.i115 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %resources.i.i.i.i.i.i115, ptr %resources.i.i.i.i.i.i115, align 4
  %prev.i2.i.i.i.i.i.i116 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i110, i32 0, i32 10, i32 1
  %128 = ptrtoint ptr %prev.i2.i.i.i.i.i.i116 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %resources.i.i.i.i.i.i115, ptr %prev.i2.i.i.i.i.i.i116, align 4
  %transfer_list.i.i.i.i.i117 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i111, i32 0, i32 18
  %call.i.i.i.i.i.i.i118 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i117, ptr noundef nonnull %msg.i.i.i110, ptr noundef nonnull %msg.i.i.i110) #3
  br i1 %call.i.i.i.i.i.i.i118, label %if.end.i.i.i.i.i.i.i120, label %rf69_write_reg.exit109.rf69_write_reg.exit122_crit_edge

rf69_write_reg.exit109.rf69_write_reg.exit122_crit_edge: ; preds = %rf69_write_reg.exit109
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit122

if.end.i.i.i.i.i.i.i120:                          ; preds = %rf69_write_reg.exit109
  call void @__sanitizer_cov_trace_pc() #5
  %129 = ptrtoint ptr %prev.i.i.i.i.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %transfer_list.i.i.i.i.i117, ptr %prev.i.i.i.i.i.i.i114, align 4
  %130 = ptrtoint ptr %transfer_list.i.i.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %msg.i.i.i110, ptr %transfer_list.i.i.i.i.i117, align 4
  %prev3.i.i.i.i.i.i.i119 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i111, i32 0, i32 18, i32 1
  %131 = ptrtoint ptr %prev3.i.i.i.i.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %msg.i.i.i110, ptr %prev3.i.i.i.i.i.i.i119, align 4
  %132 = ptrtoint ptr %msg.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %transfer_list.i.i.i.i.i117, ptr %msg.i.i.i110, align 4
  br label %rf69_write_reg.exit122

rf69_write_reg.exit122:                           ; preds = %if.end.i.i.i.i.i.i.i120, %rf69_write_reg.exit109.rf69_write_reg.exit122_crit_edge
  %call.i.i.i121 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i110) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i110) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i111) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i112) #3
  %arrayidx20 = getelementptr i8, ptr %sync_values, i32 7
  %133 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx20, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i125) #3
  %135 = getelementptr inbounds [2 x i8], ptr %buffer.i125, i32 0, i32 1
  %136 = ptrtoint ptr %buffer.i125 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 -74, ptr %buffer.i125, align 1
  %137 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %134, ptr %135, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i124) #3
  %138 = getelementptr inbounds i8, ptr %t.i.i124, i32 4
  %139 = call ptr @memset(ptr %138, i32 0, i32 92)
  %140 = ptrtoint ptr %t.i.i124 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %buffer.i125, ptr %t.i.i124, align 4
  %len1.i.i126 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i124, i32 0, i32 2
  %141 = ptrtoint ptr %len1.i.i126 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 2, ptr %len1.i.i126, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i123) #3
  %142 = getelementptr inbounds i8, ptr %msg.i.i.i123, i32 8
  %143 = call ptr @memset(ptr %142, i32 0, i32 40)
  %144 = ptrtoint ptr %msg.i.i.i123 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %msg.i.i.i123, ptr %msg.i.i.i123, align 4
  %prev.i.i.i.i.i.i.i127 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i123, i32 0, i32 1
  %145 = ptrtoint ptr %prev.i.i.i.i.i.i.i127 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %msg.i.i.i123, ptr %prev.i.i.i.i.i.i.i127, align 4
  %resources.i.i.i.i.i.i128 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i123, i32 0, i32 10
  %146 = ptrtoint ptr %resources.i.i.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %resources.i.i.i.i.i.i128, ptr %resources.i.i.i.i.i.i128, align 4
  %prev.i2.i.i.i.i.i.i129 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i123, i32 0, i32 10, i32 1
  %147 = ptrtoint ptr %prev.i2.i.i.i.i.i.i129 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %resources.i.i.i.i.i.i128, ptr %prev.i2.i.i.i.i.i.i129, align 4
  %transfer_list.i.i.i.i.i130 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i124, i32 0, i32 18
  %call.i.i.i.i.i.i.i131 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i130, ptr noundef nonnull %msg.i.i.i123, ptr noundef nonnull %msg.i.i.i123) #3
  br i1 %call.i.i.i.i.i.i.i131, label %if.end.i.i.i.i.i.i.i133, label %rf69_write_reg.exit122.rf69_write_reg.exit135_crit_edge

rf69_write_reg.exit122.rf69_write_reg.exit135_crit_edge: ; preds = %rf69_write_reg.exit122
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit135

if.end.i.i.i.i.i.i.i133:                          ; preds = %rf69_write_reg.exit122
  call void @__sanitizer_cov_trace_pc() #5
  %148 = ptrtoint ptr %prev.i.i.i.i.i.i.i127 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %transfer_list.i.i.i.i.i130, ptr %prev.i.i.i.i.i.i.i127, align 4
  %149 = ptrtoint ptr %transfer_list.i.i.i.i.i130 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %msg.i.i.i123, ptr %transfer_list.i.i.i.i.i130, align 4
  %prev3.i.i.i.i.i.i.i132 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i124, i32 0, i32 18, i32 1
  %150 = ptrtoint ptr %prev3.i.i.i.i.i.i.i132 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %msg.i.i.i123, ptr %prev3.i.i.i.i.i.i.i132, align 4
  %151 = ptrtoint ptr %msg.i.i.i123 to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile ptr %transfer_list.i.i.i.i.i130, ptr %msg.i.i.i123, align 4
  br label %rf69_write_reg.exit135

rf69_write_reg.exit135:                           ; preds = %if.end.i.i.i.i.i.i.i133, %rf69_write_reg.exit122.rf69_write_reg.exit135_crit_edge
  %add4 = add i32 %call.i.i.i56, %call.i.i.i
  %add7 = add i32 %add4, %call.i.i.i69
  %add10 = add i32 %add7, %call.i.i.i82
  %add13 = add i32 %add10, %call.i.i.i95
  %add16 = add i32 %add13, %call.i.i.i108
  %add19 = add i32 %add16, %call.i.i.i121
  %call.i.i.i134 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i123) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i123) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i124) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i125) #3
  %add22 = add i32 %add19, %call.i.i.i134
  ret i32 %add22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_packet_format(ptr noundef %spi, i32 noundef %packet_format) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %packet_format to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %packet_format, label %do.body [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call fastcc i32 @rf69_set_bit(ptr noundef %spi, i8 noundef zeroext 55, i8 noundef zeroext -128)
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call fastcc i32 @rf69_clear_bit(ptr noundef %spi, i8 noundef zeroext 55, i8 noundef zeroext -128)
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_packet_format.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_packet_format, %if.then)) #3
          to label %return [label %if.then], !srcloc !125

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_packet_format.__UNIQUE_ID_ddebug249, ptr noundef %spi, ptr noundef nonnull @.str.34, i32 noundef %packet_format) #3
  br label %return

return:                                           ; preds = %if.then, %do.body, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %if.then ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_enable_crc(ptr noundef %spi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rf69_set_bit(ptr noundef %spi, i8 noundef zeroext 55, i8 noundef zeroext 16)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_disable_crc(ptr noundef %spi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rf69_clear_bit(ptr noundef %spi, i8 noundef zeroext 55, i8 noundef zeroext 16)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_address_filtering(ptr noundef %spi, i32 noundef %address_filtering) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i.i = alloca [2 x i8], align 1
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %address_filtering)
  %cmp = icmp ugt i32 %address_filtering, 2
  br i1 %cmp, label %do.body, label %if.end10, !prof !124

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_address_filtering.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_address_filtering, %if.then9)) #3
          to label %return [label %if.then9], !srcloc !125

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_address_filtering.__UNIQUE_ID_ddebug250, ptr noundef %spi, ptr noundef nonnull @.str.36, i32 noundef %address_filtering) #3
  br label %return

if.end10:                                         ; preds = %entry
  %arrayidx = getelementptr [3 x i8], ptr @rf69_set_address_filtering.af_map, i32 0, i32 %address_filtering
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %2 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 55, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #3
  %3 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !126
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end10.rf69_read_reg.exit.i_crit_edge, label %cond.false.i.i.i

if.end10.rf69_read_reg.exit.i_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit.i

cond.false.i.i.i:                                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %result.i.i.i, align 1
  %conv.i.i.i = zext i8 %5 to i32
  br label %rf69_read_reg.exit.i

rf69_read_reg.exit.i:                             ; preds = %cond.false.i.i.i, %if.end10.rf69_read_reg.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv.i.i.i, %cond.false.i.i.i ], [ %call.i.i.i, %if.end10.rf69_read_reg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %conv.i.i = trunc i32 %cond.i.i.i to i8
  %and.i = and i8 %conv.i.i, -7
  %or.i = or i8 %and.i, %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i) #3
  %6 = getelementptr inbounds [2 x i8], ptr %buffer.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -73, ptr %buffer.i.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or.i, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #3
  %9 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buffer.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  %13 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge

rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge: ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_mod_write.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %rf69_read_mod_write.exit

rf69_read_mod_write.exit:                         ; preds = %if.end.i.i.i.i.i.i.i.i, %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i) #3
  br label %return

return:                                           ; preds = %rf69_read_mod_write.exit, %if.then9, %do.body
  %retval.0 = phi i32 [ %call.i.i.i.i, %rf69_read_mod_write.exit ], [ -22, %if.then9 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_payload_length(ptr noundef %spi, i8 noundef zeroext %payload_length) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #3
  %0 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %1 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -72, ptr %buffer.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %payload_length, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #3
  %3 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %5 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  %7 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.rf69_write_reg.exit_crit_edge

entry.rf69_write_reg.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %rf69_write_reg.exit

rf69_write_reg.exit:                              ; preds = %if.end.i.i.i.i.i.i.i, %entry.rf69_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #3
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_node_address(ptr noundef %spi, i8 noundef zeroext %node_address) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #3
  %0 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %1 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -71, ptr %buffer.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %node_address, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #3
  %3 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %5 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  %7 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.rf69_write_reg.exit_crit_edge

entry.rf69_write_reg.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %rf69_write_reg.exit

rf69_write_reg.exit:                              ; preds = %if.end.i.i.i.i.i.i.i, %entry.rf69_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #3
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_broadcast_address(ptr noundef %spi, i8 noundef zeroext %broadcast_address) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #3
  %0 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %1 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -70, ptr %buffer.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %broadcast_address, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #3
  %3 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %5 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  %7 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.rf69_write_reg.exit_crit_edge

entry.rf69_write_reg.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %rf69_write_reg.exit

rf69_write_reg.exit:                              ; preds = %if.end.i.i.i.i.i.i.i, %entry.rf69_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #3
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_tx_start_condition(ptr noundef %spi, i32 noundef %tx_start_condition) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %tx_start_condition to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %tx_start_condition, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call fastcc i32 @rf69_clear_bit(ptr noundef %spi, i8 noundef zeroext 60, i8 noundef zeroext -128)
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call fastcc i32 @rf69_set_bit(ptr noundef %spi, i8 noundef zeroext 60, i8 noundef zeroext -128)
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_tx_start_condition.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_tx_start_condition, %if.then)) #3
          to label %return [label %if.then], !srcloc !125

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_tx_start_condition.__UNIQUE_ID_ddebug251, ptr noundef %spi, ptr noundef nonnull @.str.38, i32 noundef %tx_start_condition) #3
  br label %return

return:                                           ; preds = %if.then, %do.body, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %if.then ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_fifo_threshold(ptr noundef %spi, i8 noundef zeroext %threshold) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %transfer.i = alloca %struct.spi_transfer, align 4
  %local_buffer.i = alloca [67 x i8], align 1
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i.i = alloca [2 x i8], align 1
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %threshold to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_fifo_threshold.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_fifo_threshold, %if.then5)) #3
          to label %cleanup [label %if.then5], !srcloc !125

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_fifo_threshold.__UNIQUE_ID_ddebug252, ptr noundef %spi, ptr noundef nonnull @.str.40, i32 noundef %conv) #3
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %0 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 60, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #3
  %1 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !126
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end7.rf69_read_reg.exit.i_crit_edge, label %cond.false.i.i.i

if.end7.rf69_read_reg.exit.i_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_reg.exit.i

cond.false.i.i.i:                                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %result.i.i.i, align 1
  %conv.i.i.i = zext i8 %3 to i32
  br label %rf69_read_reg.exit.i

rf69_read_reg.exit.i:                             ; preds = %cond.false.i.i.i, %if.end7.rf69_read_reg.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv.i.i.i, %cond.false.i.i.i ], [ %call.i.i.i, %if.end7.rf69_read_reg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #3
  %conv.i.i = trunc i32 %cond.i.i.i to i8
  %and.i = and i8 %conv.i.i, -128
  %or.i = or i8 %and.i, %threshold
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i) #3
  %4 = getelementptr inbounds [2 x i8], ptr %buffer.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -68, ptr %buffer.i.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or.i, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #3
  %7 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 92)
  %9 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buffer.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  %11 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge

rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge: ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_mod_write.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %rf69_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %rf69_read_mod_write.exit

rf69_read_mod_write.exit:                         ; preds = %if.end.i.i.i.i.i.i.i.i, %rf69_read_reg.exit.i.rf69_read_mod_write.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool9.not = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool9.not, label %if.end11, label %rf69_read_mod_write.exit.cleanup_crit_edge

rf69_read_mod_write.exit.cleanup_crit_edge:       ; preds = %rf69_read_mod_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %rf69_read_mod_write.exit
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i) #3
  call void @llvm.lifetime.start.p0(i64 67, ptr nonnull %local_buffer.i) #3
  %21 = getelementptr inbounds i8, ptr %local_buffer.i, i32 1
  %22 = call ptr @memset(ptr %21, i32 255, i32 66)
  %23 = ptrtoint ptr %local_buffer.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %local_buffer.i, align 1
  %24 = getelementptr inbounds i8, ptr %transfer.i, i32 12
  %25 = call ptr @memset(ptr %24, i32 0, i32 84)
  %26 = ptrtoint ptr %transfer.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %local_buffer.i, ptr %transfer.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 1
  %27 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %local_buffer.i, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 2
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %len.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #3
  %29 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %30 = call ptr @memset(ptr %29, i32 0, i32 40)
  %31 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %33 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #3
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end11.rf69_read_fifo.exit_crit_edge

if.end11.rf69_read_fifo.exit_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_read_fifo.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %35 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %38 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %rf69_read_fifo.exit

rf69_read_fifo.exit:                              ; preds = %if.end.i.i.i.i.i.i, %if.end11.rf69_read_fifo.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #3
  call void @llvm.lifetime.end.p0(i64 67, ptr nonnull %local_buffer.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i) #3
  br label %cleanup

cleanup:                                          ; preds = %rf69_read_fifo.exit, %rf69_read_mod_write.exit.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ %call.i.i, %rf69_read_fifo.exit ], [ -22, %if.then5 ], [ %call.i.i.i.i, %rf69_read_mod_write.exit.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_read_fifo(ptr noundef %spi, ptr nocapture noundef writeonly %buffer, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %transfer = alloca %struct.spi_transfer, align 4
  %local_buffer = alloca [67 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer) #3
  call void @llvm.lifetime.start.p0(i64 67, ptr nonnull %local_buffer) #3
  %0 = getelementptr inbounds i8, ptr %local_buffer, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 66)
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %size)
  %cmp = icmp ugt i32 %size, 66
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_read_fifo.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_read_fifo, %if.then4)) #3
          to label %cleanup [label %if.then4], !srcloc !125

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_read_fifo.__UNIQUE_ID_ddebug254, ptr noundef %spi, ptr noundef nonnull @.str.44) #3
  br label %cleanup

if.end5:                                          ; preds = %entry
  %2 = ptrtoint ptr %local_buffer to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %local_buffer, align 1
  %3 = getelementptr inbounds i8, ptr %transfer, i32 12
  %4 = call ptr @memset(ptr %3, i32 0, i32 84)
  %5 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %local_buffer, ptr %transfer, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 1
  %6 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %local_buffer, ptr %rx_buf, align 4
  %add = add nuw nsw i32 %size, 1
  %len = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #3
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 40)
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #3
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end5.spi_sync_transfer.exit_crit_edge

if.end5.spi_sync_transfer.exit_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_sync_transfer.exit

if.end.i.i.i.i.i:                                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_sync_transfer.exit

spi_sync_transfer.exit:                           ; preds = %if.end.i.i.i.i.i, %if.end5.spi_sync_transfer.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #3
  %arrayidx8 = getelementptr inbounds [67 x i8], ptr %local_buffer, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %buffer, ptr %arrayidx8, i32 %size)
  br label %cleanup

cleanup:                                          ; preds = %spi_sync_transfer.exit, %if.then4, %do.body
  %retval.0 = phi i32 [ %call.i, %spi_sync_transfer.exit ], [ -90, %if.then4 ], [ -90, %do.body ]
  call void @llvm.lifetime.end.p0(i64 67, ptr nonnull %local_buffer) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_set_dagc(ptr noundef %spi, i32 noundef %dagc) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dagc)
  %cmp = icmp ugt i32 %dagc, 2
  br i1 %cmp, label %do.body, label %if.end10, !prof !124

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_set_dagc.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_set_dagc, %if.then9)) #3
          to label %return [label %if.then9], !srcloc !125

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_set_dagc.__UNIQUE_ID_ddebug253, ptr noundef %spi, ptr noundef nonnull @.str.42, i32 noundef %dagc) #3
  br label %return

if.end10:                                         ; preds = %entry
  %arrayidx = getelementptr [3 x i8], ptr @rf69_set_dagc.dagc_map, i32 0, i32 %dagc
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #3
  %2 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %3 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -17, ptr %buffer.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %1, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #3
  %5 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buffer.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  %9 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #3
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end10.rf69_write_reg.exit_crit_edge

if.end10.rf69_write_reg.exit_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %rf69_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %rf69_write_reg.exit

rf69_write_reg.exit:                              ; preds = %if.end.i.i.i.i.i.i.i, %if.end10.rf69_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #3
  br label %return

return:                                           ; preds = %rf69_write_reg.exit, %if.then9, %do.body
  %retval.0 = phi i32 [ %call.i.i.i, %rf69_write_reg.exit ], [ -22, %if.then9 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rf69_write_fifo(ptr noundef %spi, ptr nocapture noundef readonly %buffer, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %local_buffer = alloca [67 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 67, ptr nonnull %local_buffer) #3
  %0 = getelementptr inbounds i8, ptr %local_buffer, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 66)
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %size)
  %cmp = icmp ugt i32 %size, 66
  br i1 %cmp, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rf69_write_fifo.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rf69_write_fifo, %if.then3)) #3
          to label %cleanup [label %if.then3], !srcloc !125

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rf69_write_fifo.__UNIQUE_ID_ddebug255, ptr noundef %spi, ptr noundef nonnull @.str.44) #3
  br label %cleanup

if.end4:                                          ; preds = %entry
  %2 = ptrtoint ptr %local_buffer to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -128, ptr %local_buffer, align 1
  %arrayidx5 = getelementptr inbounds [67 x i8], ptr %local_buffer, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %arrayidx5, ptr %buffer, i32 %size)
  %add = add nuw nsw i32 %size, 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #3
  %4 = getelementptr inbounds i8, ptr %t.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 92)
  %6 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %local_buffer, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %7 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #3
  %8 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 40)
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #3
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end4.spi_write.exit_crit_edge

if.end4.spi_write.exit_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end4.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #3
  br label %cleanup

cleanup:                                          ; preds = %spi_write.exit, %if.then3, %do.body
  %retval.0 = phi i32 [ %call.i.i, %spi_write.exit ], [ -90, %if.then3 ], [ -90, %do.body ]
  call void @llvm.lifetime.end.p0(i64 67, ptr nonnull %local_buffer) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !17, !18, !20, !21, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99, !100, !101, !103, !104, !105, !107, !108, !110, !111, !112, !114}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @rf69_set_mode.mode_map, !1, !"mode_map", i1 false, i1 false}
!1 = !{!"../drivers/staging/pi433/rf69.c", i32 107, i32 18}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/pi433/rf69.c", i32 116, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @rf69_set_mode.__UNIQUE_ID_ddebug230, !3, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!8 = !{ptr @rf69_set_modulation.modulation_map, !9, !"modulation_map", i1 false, i1 false}
!9 = !{!"../drivers/staging/pi433/rf69.c", i32 140, i32 18}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/pi433/rf69.c", i32 146, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rf69_set_modulation.__UNIQUE_ID_ddebug231, !11, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/pi433/rf69.c", i32 194, i32 4}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rf69_set_modulation_shaping.__UNIQUE_ID_ddebug232, !15, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/pi433/rf69.c", i32 212, i32 4}
!20 = !{ptr @rf69_set_modulation_shaping.__UNIQUE_ID_ddebug233, !19, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/pi433/rf69.c", i32 216, i32 3}
!23 = !{ptr @rf69_set_modulation_shaping.__UNIQUE_ID_ddebug234, !22, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/pi433/rf69.c", i32 232, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rf69_set_bit_rate.__UNIQUE_ID_ddebug235, !25, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/pi433/rf69.c", i32 275, i32 3}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @rf69_set_deviation.__UNIQUE_ID_ddebug236, !29, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/pi433/rf69.c", i32 293, i32 3}
!34 = !{ptr @rf69_set_deviation.__UNIQUE_ID_ddebug237, !33, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/pi433/rf69.c", i32 326, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rf69_set_frequency.__UNIQUE_ID_ddebug238, !36, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/pi433/rf69.c", i32 407, i32 2}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @rf69_set_output_power_level.__UNIQUE_ID_ddebug239, !40, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!43 = !{ptr @rf69_set_pa_ramp.pa_ramp_map, !44, !"pa_ramp_map", i1 false, i1 false}
!44 = !{!"../drivers/staging/pi433/rf69.c", i32 413, i32 18}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/pi433/rf69.c", i32 432, i32 3}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rf69_set_pa_ramp.__UNIQUE_ID_ddebug240, !46, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/pi433/rf69.c", i32 448, i32 3}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rf69_set_antenna_impedance.__UNIQUE_ID_ddebug241, !50, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!53 = !{ptr @rf69_set_lna_gain.lna_gain_map, !54, !"lna_gain_map", i1 false, i1 false}
!54 = !{!"../drivers/staging/pi433/rf69.c", i32 455, i32 18}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/pi433/rf69.c", i32 466, i32 3}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rf69_set_lna_gain.__UNIQUE_ID_ddebug242, !56, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!59 = !{ptr @rf69_set_ook_threshold_dec.td_map, !60, !"td_map", i1 false, i1 false}
!60 = !{!"../drivers/staging/pi433/rf69.c", i32 534, i32 18}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/pi433/rf69.c", i32 546, i32 3}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @rf69_set_ook_threshold_dec.__UNIQUE_ID_ddebug245, !62, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/pi433/rf69.c", i32 593, i32 3}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @rf69_set_dio_mapping.__UNIQUE_ID_ddebug246, !66, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/pi433/rf69.c", i32 696, i32 3}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @rf69_set_fifo_fill_condition.__UNIQUE_ID_ddebug247, !70, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/pi433/rf69.c", i32 705, i32 3}
!75 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @rf69_set_sync_size.__UNIQUE_ID_ddebug248, !74, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/pi433/rf69.c", i32 742, i32 3}
!79 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @rf69_set_packet_format.__UNIQUE_ID_ddebug249, !78, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!81 = !{ptr @rf69_set_address_filtering.af_map, !82, !"af_map", i1 false, i1 false}
!82 = !{!"../drivers/staging/pi433/rf69.c", i32 760, i32 18}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/pi433/rf69.c", i32 768, i32 3}
!85 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @rf69_set_address_filtering.__UNIQUE_ID_ddebug250, !84, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/pi433/rf69.c", i32 803, i32 3}
!89 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @rf69_set_tx_start_condition.__UNIQUE_ID_ddebug251, !88, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/staging/pi433/rf69.c", i32 814, i32 3}
!93 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @rf69_set_fifo_threshold.__UNIQUE_ID_ddebug252, !92, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!95 = !{ptr @rf69_set_dagc.dagc_map, !96, !"dagc_map", i1 false, i1 false}
!96 = !{!"../drivers/staging/pi433/rf69.c", i32 834, i32 18}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/staging/pi433/rf69.c", i32 841, i32 3}
!99 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @rf69_set_dagc.__UNIQUE_ID_ddebug253, !98, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/staging/pi433/rf69.c", i32 860, i32 3}
!103 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @rf69_read_fifo.__UNIQUE_ID_ddebug254, !102, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/staging/pi433/rf69.c", i32 892, i32 3}
!107 = !{ptr @rf69_write_fifo.__UNIQUE_ID_ddebug255, !106, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/pi433/rf69.c", i32 481, i32 3}
!110 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @rf69_set_bandwidth_intern.__UNIQUE_ID_ddebug243, !109, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/staging/pi433/rf69.c", i32 488, i32 3}
!114 = !{ptr @rf69_set_bandwidth_intern.__UNIQUE_ID_ddebug244, !113, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{!"branch_weights", i32 1, i32 2000}
!125 = !{i64 2148354785, i64 2148354790, i64 2148354803, i64 2148354847, i64 2148354881, i64 2148354902}
!126 = !{!"auto-init"}
!127 = !{i64 894428, i64 894455, i64 894477, i64 894505}
!128 = !{i64 894836, i64 894863, i64 894896, i64 894917, i64 894944, i64 894970}
!129 = !{i64 894141, i64 894168}
